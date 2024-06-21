class Public::FacilitiesController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @prefectures = Prefecture.all
    @equipment = Equipment.all

    if @q
      @facilities = @q.result.page(params[:page]).per(10)
    else
      @facilities = Facility.all.page(params[:page]).per(10)
    end
  end

  def show
    @facility = Facility.find(params[:id])
  end


  private

  def set_q
    # if params[:q] && params[:q][:equipment_id_eq]
    #   params[:q][:equipment_id_eq] = params[:q][:equipment_id_eq].reject(&:blank?).map(&:to_i)

    #   @a = EquipmentRelationship.where(equipment_id: params[:q][:equipment_id_eq])

    #   eq_ids = @a.pluck(:facility_id)


    #   @facilities = Facility.where(id: eq_ids)
      # @facilities = Facility.joins(:equipment_relationships)
      #                       .where(equipment_relationships:{equipment_id: params[:q][:equipment_id_eq] })
      #                       .group('facility_id')
      #                       .having('COUNT(equipmentRelationships.equipment_id) = ?',params[:q][:equipmnt_id_eq]&.size || 0)
      # @q = Facility.ransack(id: eq_ids)

      #facilitiesからfacility_idを抽出L28
      #Facility.ransack(id: 上で取得したid)

    #   @q =  @facilities.ransack()
    # else

      @q = Facility.ransack(params[:q])
    # end
  end
end
