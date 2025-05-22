return {
    "chrisgrieser/nvim-early-retirement",
	config = function ()
        require "early-retirement".setup{
            retirementAgeMins = 20,
            minimumBufferNum = 5,
        }
    end,
}
