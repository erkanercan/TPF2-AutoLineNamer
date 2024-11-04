local api_helper = {}

local log = nil

function api_helper.setLog(input_log)
    log = input_log
end

---@param entity_id number : the id of the entity
---@return boolean : whether the entity exists
function api_helper.entityExists(entity_id)
    return api.engine.entityExists(entity_id)
end

---@param entity_id number : the id of the entity
---@return string : entityName
function api_helper.getEntityName(entity_id)
    local exists = api_helper.entityExists(entity_id)

    if exists then
        local entity = api.engine.getComponent(entity_id, api.type.ComponentType.NAME)
        if entity and entity.name then
            return entity.name
        end
    end

    -- If we made it here, the entity doesn't exist or doesn't have a name - thus return an "ERROR" name to indicate this
    return "ERROR"
end

function api_helper.getComponent(entity_id, componentType)
    -- Check if the entity exists
    if api_helper.entityExists(entity_id) then
        return api.engine.getComponent(entity_id, componentType)
    end

    return nil
end

---sends a script command for "linenamer.lua"
function api_helper.sendScriptCommand(id, name, param)
    api.cmd.sendCommand(api.cmd.make.sendScriptEvent("linenamer.lua", id, name, param))
end

return api_helper
