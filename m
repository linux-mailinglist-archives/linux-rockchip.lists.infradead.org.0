Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EEA3BDCE
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Jun 2019 22:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1M+SnphQLfCxMb2frAAi75yy3SyxHYvisNIYwU/DIEc=; b=Uq9z3sPmIgpYhy
	nPHq377IFoiBdGisBsGSt/YHBdhcKeqXTtrq+WxSzTIDbf2C+59mujFc3DIn72WvmplRgvxNX0CTf
	4HyaylXGFAnkQf2hkM//+DWZ5n+x8zhFwoEkh2kGpFr5CMSUkqYefqEAiFLVk7SGwG3xsduhua4A0
	Q81xUuJKWVCVUU9nWkVcW4NtYnTU2+aU4SiBS/i62TXSeFxCHgWTiqKvxogsilwvZnWSiG+2NfFm2
	uqPH9Y3mIkNlD32U9ABeUu2AsDxUj5gSJICzupwv3aSUzDA90znqChd0eAPChhXMigx9B2k2fdvLY
	XRvH7SZjuI4II6jxNPZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRGN-0005lr-Dp; Mon, 10 Jun 2019 20:51:31 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haRGJ-0005lP-VZ
 for linux-rockchip@lists.infradead.org; Mon, 10 Jun 2019 20:51:29 +0000
Received: by mail-vs1-xe41.google.com with SMTP id m8so6482075vsj.0
 for <linux-rockchip@lists.infradead.org>; Mon, 10 Jun 2019 13:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eyYkEWRj0YJV5ZLI8Mg19WpHWifRtrV4TMHZVE8qPm8=;
 b=NC0Ym/mdsDncoZDorvKAM6xnQHqO/QrBZMSByQ87DFOKOY5LektD3i2fXTPFMV5gEb
 B+jz+3Dd13t7MZNh2lFBrzF3VPLx1KIsiagqMIMYyENWW6PDVua6vokHuxp4iRB7SGBP
 oFhMiqoPRQF0lp325kHJWPXC+dup4oIV+FxnM24bVaa7URJymXv0UBdm6axvZ/7SXM0V
 KpHpsjeDDyeZoP+I9UaJoBhGziX7ec09BY4mQMov6WeiEnm+l5+JUFxqG2hd7MI5PM0F
 5X61FbBw9ul1y43HMTwi6J7dygh1JPsAue+OITbRaSvfqs4rtsLSqXqhyOol/LAVEb3N
 Mc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eyYkEWRj0YJV5ZLI8Mg19WpHWifRtrV4TMHZVE8qPm8=;
 b=eT/ksNj+kFIH6n3KYMjY+BQLkUtHCfrSYc1iQYGq7t9/f7lgtQFI32azZsw+4AlQ84
 t98K/wlex0r11WZIpNz+u+O8V9cQCIGTm3YDCiaayYXk9StJYknoMqTBeQNZQidwHmWp
 hpGtNabSMCuEiIlu/hrbOvtzjm8iJAPZEZFkgHKlB5QL9OT0eZdvWoFf+1gzKLEM0RX8
 6ROFrSdWzImfOl5UsQvHF2ojS6AzUyA36+kjK2Uwv6VFQ7o1EqWuHjlchWBNIShqpOzF
 qgv9pxc5aXPHcXX+fOw298mLqFf99iKc0UrqpKnjBInP5beYkG9VZlGgz4/c7qPa1dsi
 ZlGg==
X-Gm-Message-State: APjAAAUCA4poFm65qi6fYWZQesVoCavf+DDt90Q96rEXxSTv36MgLMG5
 gY24xeqTrborsRP7WGpT3tyjWd9Ipefnx9XAl43ADA==
X-Google-Smtp-Source: APXvYqxHiF7j7PUoNqVyn9OY/HQVtXAWopKiEj3RQFyhF+xmBBltqTuNBj9BhxevhFCKpkFJxP+TtW+cFT392wT7E5c=
X-Received: by 2002:a67:6b43:: with SMTP id g64mr28426206vsc.183.1560199886317; 
 Mon, 10 Jun 2019 13:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190610175234.196844-1-dianders@chromium.org>
In-Reply-To: <20190610175234.196844-1-dianders@chromium.org>
From: Sean Paul <sean@poorly.run>
Date: Mon, 10 Jun 2019 16:50:50 -0400
Message-ID: <CAMavQKLRm8uYu3O=co5Ui7YjkK0hKHAd=+TA0oExfqnLc+TLFA@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Fix unwedge crash when no
 pinctrl entries
To: Douglas Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_135128_069367_E4F8287E 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <a.hajda@samsung.com>,
 David Airlie <airlied@linux.ie>, Jonas Karlman <jonas@kwiboo.se>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Thomas Gleixner <tglx@linutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Erico Nunes <nunes.erico@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 1:52 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> In commit 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge"
> for ddc bus") I stupidly used IS_ERR() to check for whether we have an
> "unwedge" pinctrl state even though on most flows through the driver
> the unwedge state will just be NULL.
>
> Fix it so that we consistently use NULL for no unwedge state.
>
> Fixes: 50f9495efe30 ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus")
> Reported-by: Erico Nunes <nunes.erico@gmail.com>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Thanks Erico for the report, and Doug for fixing this up quickly, I've applied
the patch to drm-misc-next

Sean

> ---
>
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index f25e091b93c5..5e4e9408d00f 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -251,7 +251,7 @@ static void dw_hdmi_i2c_init(struct dw_hdmi *hdmi)
>  static bool dw_hdmi_i2c_unwedge(struct dw_hdmi *hdmi)
>  {
>         /* If no unwedge state then give up */
> -       if (IS_ERR(hdmi->unwedge_state))
> +       if (!hdmi->unwedge_state)
>                 return false;
>
>         dev_info(hdmi->dev, "Attempting to unwedge stuck i2c bus\n");
> @@ -2686,11 +2686,13 @@ __dw_hdmi_probe(struct platform_device *pdev,
>                         hdmi->default_state =
>                                 pinctrl_lookup_state(hdmi->pinctrl, "default");
>
> -                       if (IS_ERR(hdmi->default_state) &&
> -                           !IS_ERR(hdmi->unwedge_state)) {
> -                               dev_warn(dev,
> -                                        "Unwedge requires default pinctrl\n");
> -                               hdmi->unwedge_state = ERR_PTR(-ENODEV);
> +                       if (IS_ERR(hdmi->default_state) ||
> +                           IS_ERR(hdmi->unwedge_state)) {
> +                               if (!IS_ERR(hdmi->unwedge_state))
> +                                       dev_warn(dev,
> +                                                "Unwedge requires default pinctrl\n");
> +                               hdmi->default_state = NULL;
> +                               hdmi->unwedge_state = NULL;
>                         }
>                 }
>
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
