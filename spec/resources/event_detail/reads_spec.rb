require 'rails_helper'

RSpec.describe EventDetailResource, type: :resource do
  describe 'serialization' do
    let!(:event_detail) { create(:event_detail) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(event_detail.id)
      expect(data.jsonapi_type).to eq('event_details')
    end
  end

  describe 'filtering' do
    let!(:event_detail1) { create(:event_detail) }
    let!(:event_detail2) { create(:event_detail) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: event_detail2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([event_detail2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:event_detail1) { create(:event_detail) }
      let!(:event_detail2) { create(:event_detail) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            event_detail1.id,
            event_detail2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            event_detail2.id,
            event_detail1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
