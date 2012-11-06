describe "Easymarklet.Producer", ->
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
    expect(Easymarklet.Producer).toBeDefined()

  describe ".init()", ->
    it "should be defined", ->
      producer = new Easymarklet.Producer(@bookmarklet_stub)
      expect(producer.init).toBeDefined()

  describe ".createRpcConfig()", ->
    beforeEach ->
      @producer = new Easymarklet.Producer(@bookmarklet_stub)

    it "should be defined", ->
      expect(@producer.createRpcConfig).toBeDefined()

    it "should return a hash", ->
      expect(@producer.createRpcConfig()).toBeDefined()

    describe ".local", ->

      it "should exist", ->
        expect(@producer.createRpcConfig().local).toBeDefined()

      it "should contain methods from the bookmarklet producer", ->
        @bookmarklet_stub.producer.methods.testFunk = -> "Get Down!"
        @producer = new Easymarklet.Producer(@bookmarklet_stub)
        config = @producer.createRpcConfig()
        expect(config.local.testFunk).toBeDefined()

    describe ".remote", ->

      it "should exit", ->
        expect(@producer.createRpcConfig().remote).toBeDefined()

      it "should contain methods from the bookmarklet consumer", ->
        @bookmarklet_stub.consumer.methods.testFunk = -> "Get Down!"
        @producer = new Easymarklet.Producer(@bookmarklet_stub)
        config = @producer.createRpcConfig()
        expect(config.remote.testFunk).toBeDefined()

