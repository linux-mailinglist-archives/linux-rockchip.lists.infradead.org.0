Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8EB4D538
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 19:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VkWsqs8KCYBRo5knS9rhEiVsFEXtz9fKAAfuzWW9rN0=; b=HZeJOFtINFcUfa
	sp/Lju20UhEOSLTZXcKrKWj/HTX16P4MS14Du/FzV+gvXlofmoDvcxJ4V9b9WqY8fo6xKpy58GSY+
	U6+EXZyEV2HkaTTvZjrNNRwlXpcD+1Z3hHpFryyNTxQN5JawdbWKwBgvCQBdeesGwZR0zxqzxsSmX
	BIMWQGkfWryJyFDUvfWdm6qdGBGy6xtNFz/RhMfg7XrvUBouQA2UhWFPCsK7LpGp+7Gtzh//XsV+B
	98+DhKT/S1qOk7A2dH3OmTddQR75UO5QHp4zjzvHzwqgnkWdkWrWYe0blddW3WENPRNxH6YMn7vK0
	zGYW2xWAX2EuY01fJQEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0rO-000584-I2; Thu, 20 Jun 2019 17:28:30 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0oj-0002rA-Et
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 17:25:48 +0000
Received: by mail-io1-xd44.google.com with SMTP id i10so473673iol.13
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 10:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uk7ZIBjV+VR8aLMJpfzpl5Ntma1pb1M7AjThVeR3/Lw=;
 b=lWHV/5eR2B3caBjxG4cP62L0BKX5+DFDOH9t5g8sI8uHgZiTX0lOT4X20fvXwSA5qJ
 A0pTf8M+e704lkfjlV26jPd6UAbvzhWdnGUrRTxvTt7qE6SNvM81e9y/2s2bRBYmnLmv
 /MFyEQsgp7eEwb/7xoLdGWppVk3xmWQpsCjdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uk7ZIBjV+VR8aLMJpfzpl5Ntma1pb1M7AjThVeR3/Lw=;
 b=OX33H29ieyPjz+Z2vmN5owDbckvLNzcCAQBAUDohKGFvgVKzE4kgPwDcjAlQYbxsOV
 MRbu/ZeZK8/31hq5Wf33BkTzrhOV1n8HAxiIKrkh0gnBd8w9G5/EalkmnntdntNy6650
 BqtRHtWjIe2E8u8+UvY86YvE0gNqOarKan2oYHGNyq7klW7oQk+/DoPZSqbRlzZlnzyf
 MXUspct2qjbtTKnPKL1Y4zKySJwaaAPCPTL+1gmgKJ89EYRm35laH54+zDsdxF8/5fC5
 kHjrcnqibTt4Fo6z/pXy3d0hiWRGM4U0rUp5WRCS+v1YuEC1//1/I2KPm4bGHDIwohpu
 a5Fw==
X-Gm-Message-State: APjAAAWYg1bp2E8MfkqGaij/aZYqn3vTd6Rl7ClOsvOxM0CRJGUqbxOk
 8DZHi/WEssPHmn8l6f5JgWtSlDjGdJY=
X-Google-Smtp-Source: APXvYqwMsR5BLv7sE6kQpseNyl0eJIlUFy4bSx5K+USu0Klm5iBKvfx55OwN1Q0X5bAYOctw/y5bjQ==
X-Received: by 2002:a02:394c:: with SMTP id w12mr1787875jae.126.1561051544590; 
 Thu, 20 Jun 2019 10:25:44 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com.
 [209.85.166.42])
 by smtp.gmail.com with ESMTPSA id f4sm452859iok.56.2019.06.20.10.25.41
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 10:25:42 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id j6so328043ioa.5
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 10:25:41 -0700 (PDT)
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr31877702iol.269.1561051541200; 
 Thu, 20 Jun 2019 10:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <20190618213406.7667-3-ezequiel@collabora.com>
In-Reply-To: <20190618213406.7667-3-ezequiel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 20 Jun 2019 10:25:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XoKNA4aW2LT7g8K2t+ABwgt=QJGAyiet1-Gyz3CgWmvg@mail.gmail.com>
Message-ID: <CAD=FV=XoKNA4aW2LT7g8K2t+ABwgt=QJGAyiet1-Gyz3CgWmvg@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_102545_552574_F9C48917 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Jun 18, 2019 at 2:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
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

Worth an error message?


> @@ -1205,6 +1294,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
>         .mode_fixup = vop_crtc_mode_fixup,
> +       .atomic_check = vop_crtc_atomic_check,

At first I was worried that there was a bug here since in the context
of dw_hdmi (an encoder) adding ".atomic_check" caused ".mode_fixup" to
stop getting called as per mode_fixup() in
"drivers/gpu/drm/drm_atomic_helper.c".

...but it seems like it's OK for CRTCs, so I think we're fine.


> @@ -1323,6 +1413,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
>         .disable_vblank = vop_crtc_disable_vblank,
>         .set_crc_source = vop_crtc_set_crc_source,
>         .verify_crc_source = vop_crtc_verify_crc_source,
> +       .gamma_set = drm_atomic_helper_legacy_gamma_set,

Are there any issues in adding this ".gamma_set" property even though
we may or may not actually have the ability to set the gamma
(depending on whether or not the LUT register range was provided in
the device tree)?  I am a DRM noob but
drm_atomic_helper_legacy_gamma_set() is not a trivial little function
and now we'll be running it in some cases where we don't actually have
gamma.

I also notice that there's at least one bit of code that seems to
check if ".gamma_set" is NULL.  ...and if it is, it'll return -ENOSYS
right away.  Do we still properly return -ENOSYS on devices that don't
have the register range?

It seems like the absolute safest would be to have two copies of this
struct: one used for VOPs that have the range and one for VOPs that
don't.

...but possibly I'm just paranoid and as I've said I'm a clueless
noob.  If someone says it's fine to always provide the .gamma_set
property that's fine too.


>  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> @@ -1480,6 +1571,10 @@ static int vop_create_crtc(struct vop *vop)
>                 goto err_cleanup_planes;
>
>         drm_crtc_helper_add(crtc, &vop_crtc_helper_funcs);
> +       if (vop_data->lut_size) {
> +               drm_mode_crtc_set_gamma_size(crtc, vop_data->lut_size);
> +               drm_crtc_enable_color_mgmt(crtc, 0, false, vop_data->lut_size);

Should we only do the above calls if we successfully mapped the resources?


> @@ -1776,6 +1871,17 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>         if (IS_ERR(vop->regs))
>                 return PTR_ERR(vop->regs);
>
> +       res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "lut");

As per comments in the bindings, shouldn't use the name "lut" but
should just pick resource #1.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
