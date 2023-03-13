class FibController < ApplicationController

  def index
    n = params[:n].to_i
    fib = [1,1]
    if n > 0 
      (n-2).times do |i|
        fib.push(fib[i] + fib[i + 1])
        i += 1
      end
      render json: {
        "result": fib[n-1]
      }
    else
      render json: { 
        "status": 400,
        "message": "Bad request."
      },
      status: 400
    end
  end

end
