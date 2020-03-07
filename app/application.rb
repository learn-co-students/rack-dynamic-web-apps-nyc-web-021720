class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World\n"

    run_slots(resp)

    resp.finish
  end

  def run_slots(resp)
    num1 = Kernel.rand(1..20)
    num2 = Kernel.rand(1..20)
    num3 = Kernel.rand(1..20)

    resp.write "%s, %s, %s\n" % [num1, num2, num3]

    if num1 == num2 && num1 == num3 then
      resp.write "You Win!"
    else
      resp.write "You Lose"
    end
  end

end
