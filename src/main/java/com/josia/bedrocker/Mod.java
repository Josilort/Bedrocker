package com.josia.bedrocker;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.object.builder.v1.block.FabricBlockSettings;
import net.fabricmc.fabric.api.tool.attribute.v1.FabricToolTags;
import net.minecraft.block.Block;
import net.minecraft.block.Material;
import net.minecraft.entity.effect.StatusEffect;
import net.minecraft.entity.effect.StatusEffectInstance;
import net.minecraft.entity.effect.StatusEffects;
import net.minecraft.item.*;
import net.minecraft.sound.BlockSoundGroup;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;

public class Mod implements ModInitializer {

	public static final String BD = "bedrocker";

	public static final WeakBedrock WEAK_BEDROCK = new WeakBedrock(FabricBlockSettings.of(Material.BARRIER).strength(500.0F, 2000.0F).sounds(BlockSoundGroup.STONE).breakByTool(FabricToolTags.PICKAXES).requiresTool());

	@Override
	public void onInitialize() {

		Registry.register(Registry.BLOCK, new Identifier(BD, "weak_bedrock"), WEAK_BEDROCK);
		Registry.register(Registry.ITEM, new Identifier(BD, "weak_bedrock"), new BlockItem(WEAK_BEDROCK, new Item.Settings().group(ItemGroup.BUILDING_BLOCKS).fireproof().maxCount(64)));
	}
}
