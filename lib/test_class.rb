class TestClass
  # Docstring for method with Sorbet Signature
  sig { returns(Integer) }
  def signed_method
    "String"
  end

  # Docstring for method without Sorbet signature
  def unsigned_method
    "String"
  end
end
