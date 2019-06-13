Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8286744C3D
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 21:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7ibMyt4w9GFtd2VkMYzhdiAtQtrjlBmXLK/yCxvJgc=; b=aP/YNMzwrzU3ir
	wTYmSoOVdtLXgmttmOxYoq0yBXGQHxTYhYWF64LFASDXYSSunw4lckc7KErqnToCWFCbxQOXvcDEN
	As5qg8qXQWNaN//7S5NkT1e7VsgE0xVDrkJIkXRaaxwxrND5heKAsdAP3PjN42yNfU6tw3+S4uMbD
	nvHsfG2uri551VoewMz/9YYtPz9k8WxuOTH/ZqfxU04mRaO302zQh2YmrvRzc6eN++Gc8gX3KeBBM
	j0x87gJZ+PCP/+F7HXJfCNg2SKHpSYuBJuNHydU/CYYV6Dzy654H4fbIAkFg2ZM3LdKu3CqJj0JgR
	zuwEzvIVzd0pVFRfhO9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVWi-0004W2-Eh; Thu, 13 Jun 2019 19:36:48 +0000
Received: from mail-vs1-f66.google.com ([209.85.217.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVWe-0004Va-JK
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 19:36:46 +0000
Received: by mail-vs1-f66.google.com with SMTP id a186so204085vsd.7
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2019 12:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o+i+eiasTkfYEcrQ2dOj0ucttuZAxRNcehcSsjgb96s=;
 b=uT05k1ExxIUJbVnWgLezuHW7sEhSeLOSEAp35NJeNjSzxVhuxMDdsXofBNTLYf3vs7
 eYtJ6JyDWcEXgXPGvIbykLr3mzbkyIFRNAnTcRa5Cz8yYv2wBbzAskz14hUfAczp0uEK
 xEA5nv1IzGCN8rLDyB1TV3iKX6tgoCXCitOdrLpX/6IYU51YaMDQVGIZV6XzG9CQle86
 4FktB2wnd5nUUL479xe8pSVirGE0XiLTUG7s7a59zX+7jY9IMRvrmqdHBJX7JkIse6+r
 7H8mAHfGfJBRQYX4+UvS8j7ckjrsmfibRgs4eVHIgkWkZ7Udg8F+sZetBCyMCy9h36NR
 aLUw==
X-Gm-Message-State: APjAAAUWDnQlFnDuIOYdL9K/GO63JuwvTqfi7CyhM4YTuJWyyc6XhyaY
 ntI+gobcmfG4g9jYhR5NK/bAFdTG7svvmJ8ZVdc=
X-Google-Smtp-Source: APXvYqxeeMtqe7NcF5oHjInGzrCJEEiYq7W7Xoy2Y3UhZeJeSsPQSLGyNN0HDvz7tp1wj1nJ2OakxecrX5T6GP4Hd2k=
X-Received: by 2002:a67:ea42:: with SMTP id r2mr39029274vso.207.1560454603137; 
 Thu, 13 Jun 2019 12:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190613192244.5447-1-ezequiel@collabora.com>
In-Reply-To: <20190613192244.5447-1-ezequiel@collabora.com>
From: Ilia Mirkin <imirkin@alum.mit.edu>
Date: Thu, 13 Jun 2019 15:36:32 -0400
Message-ID: <CAKb7UvhxnysEPrw2javE=OK8qop=3LPuRphbu_WQKvgCJYU6Kg@mail.gmail.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_123644_644763_6E92D712 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ibmirkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Douglas Anderson <dianders@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Note that userspace may provide any size of gamma lut. Have a look at
i915/intel_color.c:intel_color_check which filters out only the
allowed sizes. Consider having a special allowance for 256-sized LUTs
since that's what most legacy userspace will set, and it seems like a
waste to create a 10-bit LUT for RGBA8 color.

  -ilia

On Thu, Jun 13, 2019 at 3:23 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add CRTC gamma LUT configuration on RK3288 and RK3399.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> This patch seems to work well on RK3288, but produces
> a distorted output on RK3399. I was hoping
> someone could have any idea, so we can support both
> platforms.
>
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 87 +++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  2 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c |  4 +
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
>  4 files changed, 94 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 12ed5265a90b..8381679c1045 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -38,6 +38,8 @@
>  #include "rockchip_drm_vop.h"
>  #include "rockchip_rgb.h"
>
> +#define VOP_GAMMA_LUT_SIZE 1024
> +
>  #define VOP_WIN_SET(vop, win, name, v) \
>                 vop_reg_set(vop, &win->phy->name, win->base, ~0, v, #name)
>  #define VOP_SCL_SET(vop, win, name, v) \
> @@ -137,6 +139,7 @@ struct vop {
>
>         uint32_t *regsbak;
>         void __iomem *regs;
> +       void __iomem *lut_regs;
>
>         /* physical map length of vop register */
>         uint32_t len;
> @@ -1153,6 +1156,46 @@ static void vop_wait_for_irq_handler(struct vop *vop)
>         synchronize_irq(vop->irq);
>  }
>
> +static bool vop_dsp_lut_is_enable(struct vop *vop)
> +{
> +       return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
> +}
> +
> +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> +                              struct drm_crtc_state *state)
> +{
> +       struct drm_color_lut *lut;
> +       int i, idle, ret;
> +
> +       if (!state->gamma_lut)
> +               return;
> +       lut = state->gamma_lut->data;
> +
> +       spin_lock(&vop->reg_lock);
> +       VOP_REG_SET(vop, common, dsp_lut_en, 0);
> +       vop_cfg_done(vop);
> +       spin_unlock(&vop->reg_lock);
> +
> +       ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> +                          idle, !idle, 5, 10 * 30000);
> +       if (ret)
> +               return;
> +
> +       spin_lock(&vop->reg_lock);
> +       for (i = 0; i < crtc->gamma_size; i++) {
> +               u32 word;
> +
> +               word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
> +                      (drm_color_lut_extract(lut[i].green, 10) << 10) |
> +                       drm_color_lut_extract(lut[i].blue, 10);
> +               writel(word, vop->lut_regs + i * 4);
> +       }
> +
> +       VOP_REG_SET(vop, common, dsp_lut_en, 1);
> +       vop_cfg_done(vop);
> +       spin_unlock(&vop->reg_lock);
> +}
> +
>  static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>                                   struct drm_crtc_state *old_crtc_state)
>  {
> @@ -1201,6 +1244,9 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>                 drm_flip_work_queue(&vop->fb_unref_work, old_plane_state->fb);
>                 set_bit(VOP_PENDING_FB_UNREF, &vop->pending);
>         }
> +
> +       if (vop->lut_regs && crtc->state->color_mgmt_changed)
> +               vop_crtc_gamma_set(vop, crtc, crtc->state);
>  }
>
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
> @@ -1323,6 +1369,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
>         .disable_vblank = vop_crtc_disable_vblank,
>         .set_crc_source = vop_crtc_set_crc_source,
>         .verify_crc_source = vop_crtc_verify_crc_source,
> +       .gamma_set = drm_atomic_helper_legacy_gamma_set,
>  };
>
>  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> @@ -1480,6 +1527,8 @@ static int vop_create_crtc(struct vop *vop)
>                 goto err_cleanup_planes;
>
>         drm_crtc_helper_add(crtc, &vop_crtc_helper_funcs);
> +       drm_mode_crtc_set_gamma_size(crtc, VOP_GAMMA_LUT_SIZE);
> +       drm_crtc_enable_color_mgmt(crtc, 0, false, VOP_GAMMA_LUT_SIZE);
>
>         /*
>          * Create drm_planes for overlay windows with possible_crtcs restricted
> @@ -1744,6 +1793,41 @@ int rockchip_drm_wait_vact_end(struct drm_crtc *crtc, unsigned int mstimeout)
>  }
>  EXPORT_SYMBOL(rockchip_drm_wait_vact_end);
>
> +static int vop_gamma_lut_request(struct device *dev,
> +                                struct resource *res, struct vop *vop)
> +{
> +       resource_size_t offset = vop->data->gamma_lut_addr_off;
> +       resource_size_t size = VOP_GAMMA_LUT_SIZE * 4;
> +
> +       /*
> +        * Some SoCs (e.g. RK3288) have the gamma LUT address after
> +        * the MMU registers, which means we can't request and ioremap
> +        * the entire register set. Other (e.g. RK3399) have gamma LUT
> +        * address before MMU.
> +        *
> +        * Therefore, we need to request and ioremap those that haven't
> +        * been already.
> +        */
> +       if (vop->len >= (offset + size)) {
> +               vop->lut_regs = vop->regs + offset;
> +               return 0;
> +       }
> +
> +       if (!devm_request_mem_region(dev, res->start + offset,
> +                                    size, dev_name(dev))) {
> +               dev_warn(dev, "can't request gamma lut region\n");
> +               return -EBUSY;
> +       }
> +
> +       vop->lut_regs = devm_ioremap(dev, res->start + offset, size);
> +       if (!vop->lut_regs) {
> +               dev_err(dev, "can't ioremap gamma lut address\n");
> +               devm_release_mem_region(dev, res->start + offset, size);
> +               return -ENOMEM;
> +       }
> +       return 0;
> +}
> +
>  static int vop_bind(struct device *dev, struct device *master, void *data)
>  {
>         struct platform_device *pdev = to_platform_device(dev);
> @@ -1776,6 +1860,9 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>         if (IS_ERR(vop->regs))
>                 return PTR_ERR(vop->regs);
>
> +       if (vop->data->gamma_lut_addr_off)
> +               vop_gamma_lut_request(dev, res, vop);
> +
>         vop->regsbak = devm_kzalloc(dev, vop->len, GFP_KERNEL);
>         if (!vop->regsbak)
>                 return -ENOMEM;
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 2149a889c29d..12d5bde0d0bc 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -67,6 +67,7 @@ struct vop_common {
>         struct vop_reg dither_down_mode;
>         struct vop_reg dither_down_en;
>         struct vop_reg dither_up;
> +       struct vop_reg dsp_lut_en;
>         struct vop_reg gate_en;
>         struct vop_reg mmu_en;
>         struct vop_reg out_mode;
> @@ -170,6 +171,7 @@ struct vop_data {
>         const struct vop_win_yuv2yuv_data *win_yuv2yuv;
>         const struct vop_win_data *win;
>         unsigned int win_size;
> +       off_t gamma_lut_addr_off;
>
>  #define VOP_FEATURE_OUTPUT_RGB10       BIT(0)
>  #define VOP_FEATURE_INTERNAL_RGB       BIT(1)
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index 7b9c74750f6d..63fbb384893b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -593,6 +593,7 @@ static const struct vop_common rk3288_common = {
>         .dither_down_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 2),
>         .pre_dither_down = VOP_REG(RK3288_DSP_CTRL1, 0x1, 1),
>         .dither_up = VOP_REG(RK3288_DSP_CTRL1, 0x1, 6),
> +       .dsp_lut_en = VOP_REG(RK3288_DSP_CTRL1, 0x1, 0),
>         .data_blank = VOP_REG(RK3288_DSP_CTRL0, 0x1, 19),
>         .dsp_blank = VOP_REG(RK3288_DSP_CTRL0, 0x3, 18),
>         .out_mode = VOP_REG(RK3288_DSP_CTRL0, 0xf, 0),
> @@ -641,6 +642,7 @@ static const struct vop_data rk3288_vop = {
>         .output = &rk3288_output,
>         .win = rk3288_vop_win_data,
>         .win_size = ARRAY_SIZE(rk3288_vop_win_data),
> +       .gamma_lut_addr_off = RK3288_GAMMA_LUT_ADDR,
>  };
>
>  static const int rk3368_vop_intrs[] = {
> @@ -811,6 +813,7 @@ static const struct vop_data rk3399_vop_big = {
>         .win = rk3368_vop_win_data,
>         .win_size = ARRAY_SIZE(rk3368_vop_win_data),
>         .win_yuv2yuv = rk3399_vop_big_win_yuv2yuv_data,
> +       .gamma_lut_addr_off = RK3399_GAMMA_LUT_ADDR,
>  };
>
>  static const struct vop_win_data rk3399_vop_lit_win_data[] = {
> @@ -836,6 +839,7 @@ static const struct vop_data rk3399_vop_lit = {
>         .win = rk3399_vop_lit_win_data,
>         .win_size = ARRAY_SIZE(rk3399_vop_lit_win_data),
>         .win_yuv2yuv = rk3399_vop_lit_win_yuv2yuv_data,
> +       .gamma_lut_addr_off = RK3399_GAMMA_LUT_ADDR,
>  };
>
>  static const struct vop_win_data rk3228_vop_win_data[] = {
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
> index 6e9fa5815d4d..490318382f74 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
> @@ -113,6 +113,7 @@
>  #define RK3288_DSP_VACT_ST_END                 0x0194
>  #define RK3288_DSP_VS_ST_END_F1                        0x0198
>  #define RK3288_DSP_VACT_ST_END_F1              0x019c
> +#define RK3288_GAMMA_LUT_ADDR                  0x1000
>  /* register definition end */
>
>  /* rk3368 register definition */
> --
> 2.20.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
