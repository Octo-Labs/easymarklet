describe "Bookmarklet.Consumer", ->
  beforeEach ->
    @bookmarklet_stub = { consumer : {}, producer : {} }

  it "should be defined", ->
    console.log(Bookmarklet.Consumer)
    expect(Bookmarklet.Consumer).toBeDefined()

  describe ".init()", ->
    it "should be defined", ->
      consumer = new Bookmarklet.Consumer(@bookmarklet_stub)
      expect(consumer.init).toBeDefined()

    it "should call a few setup functions", ->
      consumer = new Bookmarklet.Consumer(@bookmarklet_stub)
      spyOn(consumer,'loadEasyXdmLib').andReturn(null)
      spyOn(consumer,'loadJsonLib').andReturn(null)
      spyOn(consumer,'loadCss').andReturn(null)
      consumer.init()
      expect(consumer.loadEasyXdmLib).toHaveBeenCalled()
      expect(consumer.loadJsonLib).toHaveBeenCalled()
      expect(consumer.loadCss).toHaveBeenCalled()


  describe ".loadEasyXdmLib()", ->
    it "should be defined", ->
      consumer = new Bookmarklet.Consumer(@bookmarklet_stub)
      expect(consumer.loadEasyXdmLib).toBeDefined()

  describe ".loadJsonLib()", ->
    it "should be defined", ->
      consumer = new Bookmarklet.Consumer(@bookmarklet_stub)
      expect(consumer.loadJsonLib).toBeDefined()

  describe ".loadCss()", ->
    it "should be defined", ->
      consumer = new Bookmarklet.Consumer(@bookmarklet_stub)
      expect(consumer.loadCss).toBeDefined()



