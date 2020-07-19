# frozen_string_literal: true

require './config/environment'

use Rack::RequestId
use Rack::Ougai::LogRequests, AdsBoard.logger

run AdsBoard
