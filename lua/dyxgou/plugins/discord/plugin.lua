return {
  'vyfor/cord.nvim',
  build = ':Cord update',
  opts = {
    editing = function(opts)
      return string.format('Editando %s - %s:%s', opts.filename, opts.cursor_line, opts.cursor_char)
    end,
    text = {
      workspace = function(opts)
        local hour = tonumber(os.date('%H'))
        local status =
            hour >= 22 and '🌙 Ya deberia estar dormido' or
            hour >= 18 and '🌆 Codificando bajo estrellas' or
            hour >= 12 and '☀️ Chambeando' or
            hour >= 5 and '🌅 Programando porque el que madruga Dios le ayuda' or
            '🌙 Este plugin es re chevere'

        return string.format('%s: %s', status, opts.filename)
      end
    }
  }
}
