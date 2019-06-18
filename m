Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A34C4AD8C
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 23:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5fqlLwDXl2mGE5HY6dZDKXf+aYzGVGMgrjG3CBOj+Y=; b=mxD3q0yK0rnktC
	x9JRyhJXnMvzTqV4lpfid78qLikbWWCBacLbDQWOfD6tr5r9oP5GteSr7AkKUJTTU5f97trhH5dIY
	OweE4/0diKdkRJWC+cLySUUWCXb1vbm61S3isVpFT0QHGsPa9KYPWGD80jWuKuT2Rgr9cMOvm+qX9
	NOoYMekp2ss18dBWVq3WqtRfQnnKV4zgRlDaNpHslSbTYv4tdyOfvcmUepn0U81qf3eqRe0mZMAIO
	KWvkfphr2uhnDrdLVZoNWkGufv/pK3/LtGRMH0gVpVaVZQoHxmfwAU9eid4CpxrUSSWvVK4UE/MqC
	l298P9jAdph98If6XYOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLx4-00018v-Ov; Tue, 18 Jun 2019 21:47:38 +0000
Received: from mail-ua1-f66.google.com ([209.85.222.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLx0-00017y-WB
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 21:47:36 +0000
Received: by mail-ua1-f66.google.com with SMTP id c4so7638124uad.1
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 14:47:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I0RWfX7/brWCQJZlmTP4b1pf0cVwk5bUjTnCrdF8UAY=;
 b=AzNqDq/gNqy7EPcwpJ1eVWhHo/fW79eKQkyf70xp5fNNPBYvP+LyUqqdzvBScqz44f
 mIW/FEdKhIP/g00hzPGnE7TBoLtLpQ/zn+CWbFYozv5FGteUwOJd/OXTAdpgFOT/LHh5
 94XUHnHV6KIT06F+9DrqzT3mxWrj+80gFgRT07813jBFNCGC6zQi//ndhhx3/Z5g4L5B
 hI8iEEpHijGiphuysTuy3mIm/hbEsUHeJFixCJqr8OEsWbV2sanOzkSEyZPi5ffta9hn
 qAIHXMPLCLQXUzFJqm/Yb/50MOvRi8xG481l9FjHYGuYesfxh792BaOnKYt7mH5UehDh
 pyzA==
X-Gm-Message-State: APjAAAUxxCDpOh5vcwbydxaNuG4ku/lqnOKr8UpVYmehGATji+2BS66N
 oGc102NCzveIbH3MflrPxE51NWVv/LmBUOrdGhY=
X-Google-Smtp-Source: APXvYqxuHJvBUgcTAIF7H6uuKf/TgeRQI8Gc97Xr2WBYZISyfbVN7S7r7p3sI20JELN7OjPaH4dM5N25VHb2Dddyzm8=
X-Received: by 2002:a9f:31a2:: with SMTP id v31mr12191937uad.15.1560894453845; 
 Tue, 18 Jun 2019 14:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <20190618213406.7667-3-ezequiel@collabora.com>
In-Reply-To: <20190618213406.7667-3-ezequiel@collabora.com>
From: Ilia Mirkin <imirkin@alum.mit.edu>
Date: Tue, 18 Jun 2019 17:47:22 -0400
Message-ID: <CAKb7UvgvY0tJDV9A=4+8=iqraziyt8SGF-QrX=M8jz+R+5JC=A@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_144735_034224_D091966B 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ibmirkin[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 5:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add an optional CRTC gamma LUT support, and enable it on RK3288.
> This is currently enabled via a separate address resource,
> which needs to be specified in the devicetree.
>
> The address resource is required because on some SoCs, such as
> RK3288, the LUT address is after the MMU address, and the latter
> is supported by a different driver. This prevents the DRM driver
> from requesting an entire register space.
>
> The current implementation works for RGB 10-bit tables, as that
> is what seems to work on RK3288.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from RFC:
> * Request (an optional) address resource for the LUT.
> * Drop support for RK3399, which doesn't seem to work
>   out of the box and needs more research.
> * Support pass-thru setting when GAMMA_LUT is NULL.
> * Add a check for the gamma size, as suggested by Ilia.
> * Move gamma setting to atomic_commit_tail, as pointed
>   out by Jacopo/Laurent, is the correct way.
> ---
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 12ed5265a90b..5b6edbe2673f 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> +                              struct drm_crtc_state *old_state)
> +{
> +       int idle, ret, i;
> +
> +       spin_lock(&vop->reg_lock);
> +       VOP_REG_SET(vop, common, dsp_lut_en, 0);
> +       vop_cfg_done(vop);
> +       spin_unlock(&vop->reg_lock);
> +
> +       ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> +                          idle, !idle, 5, 30 * 1000);
> +       if (ret)
> +               return;
> +
> +       spin_lock(&vop->reg_lock);
> +
> +       if (crtc->state->gamma_lut) {
> +               if (!old_state->gamma_lut || (crtc->state->gamma_lut->base.id !=
> +                                             old_state->gamma_lut->base.id))
> +                       vop_crtc_write_gamma_lut(vop, crtc);
> +       } else {
> +               for (i = 0; i < crtc->gamma_size; i++) {
> +                       u32 word;
> +
> +                       word = (i << 20) | (i << 10) | i;
> +                       writel(word, vop->lut_regs + i * 4);
> +               }

Note - I'm not in any way familiar with the hardware, so take with a
grain of salt --

Could you just leave dsp_lut_en turned off in this case?

Cheers,

  -ilia

> +       }
> +
> +       VOP_REG_SET(vop, common, dsp_lut_en, 1);
> +       vop_cfg_done(vop);
> +       spin_unlock(&vop->reg_lock);
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
