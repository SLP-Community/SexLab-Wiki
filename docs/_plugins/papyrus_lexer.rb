# Papyrus syntax highlighter for Jekyll/Rouge
# Place this file in _plugins/ directory

require 'rouge'

module Rouge
  module Lexers
    class Papyrus < RegexLexer
      title 'Papyrus'
      desc 'Papyrus scripting language (Skyrim/Fallout)'
      tag 'papyrus'
      aliases 'papyrus', 'psc'
      filenames '*.psc'
      mimetypes 'text/x-papyrus'

      # Keywords
      KEYWORDS = %w(
        if else elseif endif while endwhile function endfunction
        return import as const int float bool string auto none
        import extends event length new var is cast
      ).freeze

      BUILTIN_KEYWORDS = %w(
        True False None Self Parent
      ).freeze

      def self.keywords
        @keywords ||= Set.new(KEYWORDS)
      end

      def self.builtin_keywords
        @builtin_keywords ||= Set.new(BUILTIN_KEYWORDS)
      end

      state :root do
        rule %r/;.*$/, Comment::Single
        rule %r/\s+/, Whitespace

        # Function definitions
        rule %r/(Function)(\s+)([a-zA-Z_]\w*)/, 
          by_groups(Keyword, Whitespace, Name::Function)

        # Event definitions
        rule %r/(Event)(\s+)([a-zA-Z_]\w*)/, 
          by_groups(Keyword, Whitespace, Name::Function)

        # Type definitions
        rule %r/([\w\[\]]+)(\s+)([a-zA-Z_]\w*)(?=\s*[=\(])/,
          by_groups(Keyword::Type, Whitespace, Name::Variable)

        # Strings
        rule %r/"(?:\\.|[^"\\])*"/, String::Double

        # Numbers
        rule %r/\b\d+\.\d+\b/, Number::Float
        rule %r/\b\d+\b/, Number::Integer

        # Keywords
        rule %r/\b(?:#{Papyrus.keywords.join('|')})\b/, Keyword
        rule %r/\b(?:#{Papyrus.builtin_keywords.join('|')})\b/, Keyword::Constant

        # Built-in functions
        rule %r/\b(GetActor|GetValue|GetState|SetValue|RegisterForModEvent|UnregisterForModEvent|Debug|Game|Utility|Math)\b/,
          Name::Builtin

        # Comments
        rule %r/{/, Comment::Multiline, :comment_block
        rule %r/;.*$/, Comment::Single

        # Operators
        rule %r/(\+|-|\*|\/|%|==|!=|<=|>=|<|>|&&|\|\||!)/, Operator

        # Punctuation
        rule %r/[()[\]{},.]/, Punctuation

        # Identifiers
        rule %r/[a-zA-Z_]\w*/, Name
      end

      state :comment_block do
        rule %r/}/, Comment::Multiline, :pop!
        rule %r/[^}]/, Comment::Multiline
      end
    end
  end
end
