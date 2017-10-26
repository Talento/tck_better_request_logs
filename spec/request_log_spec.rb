RSpec.describe TckBetterRequestLogs::RequestLog do
  let(:runtime) { 1000 }
  let(:payload) do
    {
      status: 200, format: 'html', method: 'GET', path: '/home?foo=bar', params: {
        'controller' => 'home', 'action' => 'index', 'foo' => 'bar'
      }, db_runtime: 0.02, view_runtime: 0.01
    }
  end

  subject do
    TckBetterRequestLogs::RequestLog.new payload, runtime
  end

  describe '#log' do
    it do
      expect(subject.log).not_to be_empty
    end

    it 'contains path' do
      expect(subject.log).to match(/path=\[\/home/)
    end

    it 'contains format' do
      expect(subject.log).to match(/format=html/)
    end
  end
end

