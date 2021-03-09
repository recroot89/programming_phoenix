defimpl Phoenix.Param, for: ProgrammingPhoenix.Multimedia.Video do
  def to_param(%{slug: slug, id: id}) do
    "#{id}-#{slug}"
  end
end
