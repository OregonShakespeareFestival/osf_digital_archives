//= require modules/data

describe "Data", ->
  data = null

  beforeEach(->
    data = new window.OSFData()
  )

  it "initializes without any options", ->
    expect(data.init).not.toThrow()