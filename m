Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94D311E4AC
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 14:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZ14g9McBSrAMUXkMhRWacUBmM+QVoszYyY3X2MFA+0=; b=YSyjuuHJQReREs
	kbkUEqV7EVajN59pIgFDa2Wev+lXcsOGbnoMKLnTfzEkaOFBg5XB/G0wytXpUP4DWI1uHo+rcjsCF
	7/PgxJl90r2e9p2e0GgXbnuNV744AenbFkAWI4J2uH2s3EZw5R9hH1EvsKsuWkGB9QbJBJlP2xqXL
	WDfqhRQpUvL/5duLpNNqSjmsSA1qooc233Ec1zPE1C8UJtX2Hhmuc8W6wHgVfl0owKdoJn7+Wu829
	9ybM1mss4N0L9UiSfMuTIoiecPKgJExnpfLoB8mIntEWNL+iMDHwTs1gaG6+9wzVyctuyPJbsqzkk
	ktqkKxzzbsj2HRJYFVsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifl2d-0000r2-Jk; Fri, 13 Dec 2019 13:31:35 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifl2C-0000Sj-0B
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 13:31:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id e10so2643964ljj.6
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2019 05:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HrvoDck5eY5GK0w6K4AhLmPPIWL1Xrc1xH4Up/JEjjk=;
 b=Cbhnm/ox1I54nuH9njXHzccQrQot6KLJxrMb3XxyvsplUdUL3Q5Rul7FpZFaw6qIui
 KYp2hTrI1d6g+6A/dt3EeK/jyydFWmrzksF0s5cf6LxX401J1UfovmCKuRKzXFovXU5C
 QsI8OLd61zJoOK06uURda9yi4bsvTHAi28Tnrv3Y2WUQG8yz9MVsYlfxzXPwO2QT9YRG
 RsAyEYz1F5CKeLy89t5OQs+1Sn+GSZS1npqdvVHKIH8gmwGE2/La+4ljJz3l0hoayrrz
 IPjK34H/OTvJKUlP1UABm4Vzd9dvTCGe00klnysMonCEbsx3CWRH5rIYuP+ptTWBx8JB
 NZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HrvoDck5eY5GK0w6K4AhLmPPIWL1Xrc1xH4Up/JEjjk=;
 b=acLbRM4f9Ar0t6EuzuASIfHJXR4KzhuNUAq+OoIg9t9J3qgnsJboaHJDaxBKdi5RE+
 LwXdeJ/xM/7XjHLuVFqDjtCupe52/BDTF7KwqKEvIdSap2dZi/iJNy9DLD9j6Lvx6dfH
 oJglm5jQCSeYCe/RiO+s7Xiq8exajs1brGlxG7Ni3kuvDphZEBnzpTdTvnv1quADhF1I
 iciK0+URrlwkgcqYXXENDLSCKZeQfOgtRJnhLNVdOEKBWuhf185Ho0mPXzgOwQqllvWH
 oi9V++U+63dsd9uBxcnhzseWLOkQJEFL5yubp+HxJIzLjnS5iX3/QDBbdWBgfaVCh+Ue
 Ec/g==
X-Gm-Message-State: APjAAAUFQuIoMJb3z8qSg81G2odW8L9TLXjKH2ZPgc/iACyvxzwfGgLc
 GU+exJ8l1pLEmm5/Na1GxjsAOz3NpxxQ0xzi+MDZRQ==
X-Google-Smtp-Source: APXvYqwMLtHFJLKb/OsUbyLvQlBeLa8EouQdhXkxY6ssHTmFd/qwkZ2hUZ7P2vEvqVVUtgkdycvnaAaf3SbpBeZBuMg=
X-Received: by 2002:a2e:9587:: with SMTP id w7mr9207930ljh.42.1576243865608;
 Fri, 13 Dec 2019 05:31:05 -0800 (PST)
MIME-Version: 1.0
References: <20191207140353.23967-1-sam@ravnborg.org>
 <20191207140353.23967-3-sam@ravnborg.org>
In-Reply-To: <20191207140353.23967-3-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Dec 2019 14:30:54 +0100
Message-ID: <CACRpkdaVYeJme0O8CW-heTmf3-0EHowFwcOAyy3jx13gjfj4zA@mail.gmail.com>
Subject: Re: [PATCH v2 02/25] drm/panel: add backlight support
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_053108_123710_0B98F051 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Dec 7, 2019 at 3:04 PM Sam Ravnborg <sam@ravnborg.org> wrote:

> Panels often supports backlight as specified in a device tree.
> Update the drm_panel infrastructure to support this to
> simplify the drivers.
>
> With this the panel driver just needs to add the following to the
> probe() function:
>
>     err = drm_panel_of_backlight(panel);
>     if (err)
>             return err;
>
> Then drm_panel will handle all the rest.
>
> There is one caveat with the backlight support.
> If drm_panel_(enable|disable) are called multiple times
> in row then backlight_(enable|disable) will be called multiple times.
>
> The above will happen when a panel drivers unconditionally
> calls drm_panel_disable() in their shutdown() function,
> whan the panel is already disabled and then shutdown() is called.
>
> Reading the backlight code it seems safe to call
> the backlight_(enable|disable) several times.
>
> v3:

v3 looks good to me +/- Laurent's comments:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
