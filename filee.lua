--
-- Created by IntelliJ IDEA.
-- User: janos.seteny
-- Date: 2015.01.22.
-- Time: 16:26
-- To change this template use File | Settings | File Templates.

-- http://lua-users.org/wiki/PatternsTutorial

-- https://github.com/andremm/lua-parser/blob/master/lua-parser/parser.lua

-- https://github.com/jseteny/logparser/blob/master/src/main/scala/hu/matan/log/parser/Log4JParser.scala


function antPhase(line)
    return string.match(line, "^(%a+):$") ~= nil
end

function parseFileContent(fileName)
    for line in io.lines(fileName) do

        if antPhase(line) then

            print(line)
        end
    end
end


parseFileContent "mixed log4j and ant.log"
