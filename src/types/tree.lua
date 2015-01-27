local tree = {}
tree.__index = tree

-- Create a new tree
function tree.create(value)
	local newtree = {}
	setmetatable(newtree, tree)
	newtree.parent = nil
	newtree.value = value
	newtree.children = {}
	newtree.activenode = newtree
	return newtree
end

-- Create a new child for the current active node
function tree.createChild(self, value)
	local newnode = tree.create(value)
	newnode.parent = self
	table.insert(self.activenode.children, newnode)
end

-- Ascend or descend the tree by value. Returns true if successful.
function tree.descendValue(self, value)
	for k, v in pairs(self.activenode.children) do
		if v.value == value then
			self.activenode = v
			return true
		end
	end
	return false
end

function tree.descendInt(self, integer)
	if self.activenode.children[integer] ~= nil then
		self.activenode = self.activenode.children[integer]
		return true
	end
	return false
end

function tree.ascend(self, value)
	if self.activenode.parent ~= nil then
		self.activenode = self.activenode.parent
		return true
	end
	return false
end

-- Get the value of the current node
function tree.getNodeValue(self)
	return self.activenode.value
end

-- Get the number of children at the active node
function tree.getNumChildren(self)
	return #self:getChildren()
end

-- Get a list of the children for the active node of the tree
function tree.getChildren(self)
	local children = {}
	for k, v in pairs(self.activenode.children) do
		table.insert(children, v.value)
	end
	return children
end

return tree