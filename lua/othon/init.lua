local plugins = require('othon.plugins')
local mappings = require('othon.mappings')
local options = require('othon.options')

return {
  setup = function ()
    mappings.load()
    print('All mapped loaded')

    options.load()
    print('All options loaded')

    plugins.load()
    print('All dependencies loaded')
  end
}
