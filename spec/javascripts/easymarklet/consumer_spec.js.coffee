describe "Easymarklet.Consumer", ->
  beforeEach ->
    @bookmarklet_stub = { 
      consumer : {
        methods : {}
      },
      producer : {
        methods : {}
      }
    }

  it "should be defined", ->
    expect(Easymarklet.Consumer).toBeDefined()

  describe ".init()", ->
    it "should be defined", ->
      consumer = new Easymarklet.Consumer(@bookmarklet_stub)
      expect(consumer.init).toBeDefined()

    it "should call a few setup functions", ->
      consumer = new Easymarklet.Consumer(@bookmarklet_stub)
      spyOn(consumer,'loadEasyXdmLib').andReturn(null)
      spyOn(consumer,'loadJsonLib').andReturn(null)
      spyOn(consumer,'loadCss').andReturn(null)
      consumer.init()
      expect(consumer.loadEasyXdmLib).toHaveBeenCalled()
      expect(consumer.loadJsonLib).toHaveBeenCalled()
      expect(consumer.loadCss).toHaveBeenCalled()


  describe ".loadEasyXdmLib()", ->
    it "should be defined", ->
      consumer = new Easymarklet.Consumer(@bookmarklet_stub)
      expect(consumer.loadEasyXdmLib).toBeDefined()

  describe ".loadJsonLib()", ->
    it "should be defined", ->
      consumer = new Easymarklet.Consumer(@bookmarklet_stub)
      expect(consumer.loadJsonLib).toBeDefined()

  describe ".loadCss()", ->
    it "should be defined", ->
      consumer = new Easymarklet.Consumer(@bookmarklet_stub)
      expect(consumer.loadCss).toBeDefined()

  describe ".createRpcConfig()", ->
    beforeEach ->
      @consumer = new Easymarklet.Consumer(@bookmarklet_stub)

    it "should be defined", ->
      expect(@consumer.createRpcConfig).toBeDefined()

    it "should return a hash", ->
      expect(@consumer.createRpcConfig()).toBeDefined()

    describe ".local", ->

      it "should exist", ->
        expect(@consumer.createRpcConfig().local).toBeDefined()

      it "should contain methods from the bookmarklet consumer", ->
        @bookmarklet_stub.consumer.methods.testFunk = -> "Get Down!"
        @consumer = new Easymarklet.Consumer(@bookmarklet_stub)
        config = @consumer.createRpcConfig()
        expect(config.local.testFunk).toBeDefined()

    describe ".remote", ->

      it "should exit", ->
        expect(@consumer.createRpcConfig().remote).toBeDefined()

      it "should contain methods from the bookmarklet producer", ->
        @bookmarklet_stub.producer.methods.testFunk = -> "Get Down!"
        @consumer = new Easymarklet.Consumer(@bookmarklet_stub)
        config = @consumer.createRpcConfig()
        expect(config.remote.testFunk).toBeDefined()


