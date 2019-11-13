Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CCEFB371
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 16:16:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFqy+tOHG1CEDERy2F4MV+DnKe7ArwNDE92Df1LuMwE=; b=c6Q/A6SaJxilHJ
	2sv3udu3MTp15SQFE14efAp1XuaH/y/dmqPagEu5L2SLEGOYbnNGr0cxRaJ/EWjElKPNwLHCbaREi
	JmRubzNfcJFWK/57bUVyb77l+cTwRV4QU+XY8D9yLo1GZn8RWgWE23IkfTTRr6xFGB3WN3+wMLKDN
	Wv4+W9HqaT1CrzglHvz3bGq7f86/x5a3LrmpYdEnUgxHD83WJHy6w3i/F7rcKEapzPVxXDAz/tPMh
	udMTCp6bbHu4BhIJIzaSNgp9bbT7oIIcRIpmX2xg+QcHDxvIXbWOOO/XrSZPXAeJQyyyxk1TjciJi
	YYc/rbkin3idceLRCm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuNL-0008Mz-Sg; Wed, 13 Nov 2019 15:16:07 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuN4-0008CK-VK; Wed, 13 Nov 2019 15:15:52 +0000
Received: by mail-vk1-xa41.google.com with SMTP id 70so636606vkz.8;
 Wed, 13 Nov 2019 07:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tdx64IKqxKujdLSoPw+cjx2+bVR8WBgZkb8xil7EtMM=;
 b=Kiaj0N5S0qYuVlCpJBh03NNDuyWtcNFnOuJsukl9zdoiOeFcx8h4ED9IUaW/x4fITZ
 tYZ0Le24vH3+ac2xQ/6lGGC+9jq9R+JXkAVb5c8k/UtUgtPpEpiU3ULFRARyfY4dFdqg
 tZQdf67Tiwl23gMVa1lI8+BqS//VN6Y3kNX+XkjvoQN1V6JXq6UoiUXJjuRTOqHPXEdM
 jzzP+kAZDU9zY+J/O0raG0KPLhX41af5R0cHcBJUk+o7penJeGbFwOkqh+BP1+OyA5fe
 yr0GyhqxCK9Lej974x047/O+3wkrx097s9AYydjrreC5U2UMB99SKacR5BccrvtPV/iS
 XFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tdx64IKqxKujdLSoPw+cjx2+bVR8WBgZkb8xil7EtMM=;
 b=Kn69JYxbD2AUlcjM23Tj2CEVPmiYqRYU3Fwrc9WAO2LbJzE/phmSnh89bxlDhAwWwW
 o0brnni9SFkOQhFB/txHYjLwL9XcluBeC2usrFCeRvf5r5GMk5c9ZK296l3tKW49P7qt
 h1I6swiF9t7KA/bfT7eBpHhIDM1fBnbfQZV/bK6tfLfIIFVCZmMaJ27Qi78tKRSaHby4
 5nPMy2Y3bMHnMZXJvoieWLDkep7fGdVwXysK1ueFTMt+UFOIjjBr97VGjAEr6MQOxUYF
 WDCDx0XtIZtyE0p7dprIACvO7F1409su+iT9x1I5GTiwekPp9ZvR3UU9kxdGycD8JrKb
 I2+g==
X-Gm-Message-State: APjAAAU6zHQoRG77qQXIkYQ5e4FW+wnhhGqFW4Z9WBSnozr34KiL3kMY
 CsRov1oZxz8Vl4aT6CAe3e3dQ1lcU2KG3Duq8co=
X-Google-Smtp-Source: APXvYqwwACa+02CrVM7lnQq8G9xOFlxb696P1JSOC3QIO3M+yBf6hT1VsVmH1ipJUkNQQy14paArRCJowFOcazun1gI=
X-Received: by 2002:a1f:a1ce:: with SMTP id k197mr1986349vke.28.1573658149379; 
 Wed, 13 Nov 2019 07:15:49 -0800 (PST)
MIME-Version: 1.0
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-3-adrian.ratiu@collabora.com>
In-Reply-To: <20191106163031.808061-3-adrian.ratiu@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 13 Nov 2019 15:15:22 +0000
Message-ID: <CACvgo51TpL1GMwf-QFidsbAQ-GiE6ry+QHwmi9x0Nen9Gg4B1g@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] drm: bridge: dw_mipi_dsi: abstract register access
 using reg_fields
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_071551_010345_052450E3 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Adrian,

On Wed, 6 Nov 2019 at 16:31, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Register existence, address/offsets, field layouts, reserved bits and
> so on differ between MIPI-DSI versions and between SoC vendor boards.
> Despite these differences the hw IP and protocols are mostly the same
> so the generic driver can be made to compensate these differences.
>
> The current Rockchip and STM drivers hardcoded a lot of their common
> definitions in the bridge code because they're based on DSI v1.30 and
> 1.31 which are relatively close, but in order to support older/future
> versions with more diverging layouts like the v1.01 present on imx6,
> we abstract some of the register accesses via the regmap field APIs.
>
> The bridge detects the DSI core version and initializes the required
> regmap register layout, so platform drivers will continue to use the
> regmap as before. Other DSI versions / register layouts can easily be
> added in the future by only changing the bridge code.
>
> An additional benefit of using the reg_field API is that much of the
> bit-shifting and masking boilerplate is removed because it's now
> handled automatically by the regmap subsystem.
>
> Not all register accesses have been converted: only the minimum diff
> between the three host controller versions supported by the current
> vendor platform drivers (rockchip, stm and now imx), more can be added
> in the future as needed.
>
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>

With the extra const mentioned below the patch is:
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

> +
> +static struct dw_mipi_dsi_variant dw_mipi_dsi_v130_v131_layout = {
It's a non-const here, while we consider it a const below. I'd add the explicit
const declaration here.

> +#define INIT_FIELD(f) INIT_FIELD_CFG(field_##f, cfg_##f)
> +#define INIT_FIELD_CFG(f, conf)                                                \
> +       do {                                                            \
> +               dsi->f = devm_regmap_field_alloc(dsi->dev, dsi->regs,   \
> +                                                variant->conf);        \
> +               if (IS_ERR(dsi->f))                                     \
> +                       dev_warn(dsi->dev, "Ignoring regmap field " #f "\n"); \
> +       } while (0)
> +
> +static int dw_mipi_dsi_regmap_fields_init(struct dw_mipi_dsi *dsi)
> +{
> +       const struct dw_mipi_dsi_variant *variant = &dw_mipi_dsi_v130_v131_layout;
> +

Having a closer look at the const-ness thing:
devm_regmap_field_alloc() uses a read/write copy of the reg_field struct (5
unsigned ints), even though it only uses them as read-only. A sensible way to
improve is is to pass a "const struct reg_field *" instead.

But that for another day ... might be worth adding a newbie regmap task for, if
you can see where to file that.


-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
