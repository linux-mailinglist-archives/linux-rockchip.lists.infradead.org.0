Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804841F9E2
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:25:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VajDCaGvu/0PnQtU09sCtJ8enK6tBK3+Z9K3y2fMctE=; b=fwhQ2dKnsvj+H/
	HWKgUOGRd07JVlSqp5nZaObJxfftTaZ1/S815EyDKCZ8sV63a3DIOv0KuVwdH2eBmj/GT5L7HASC7
	K8yP0hqOXebvSSNk2Ytph6F8kDo0hxTQabGYIEqp3l/QRjzF89tx1/PnEDKkOmcfFqsBhPMTfo846
	e8gycssGM33Nl7nugRM3O/OLgj1AFj5s5mhi703shVCaiE+rgPFjYxu2hYXHWpOuBG24CmS0zk4CY
	qHVQ+IIvjxp0FYXR01AhVPdJHsf5dbDLnoGD5JhTi0Q25rbhdstmnMuxzHy+mwP068gA9Z/QFF1hU
	DBromGQwz3YsP2Mom4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyb6-0001G7-VC; Wed, 15 May 2019 18:25:48 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyb4-0001FU-4i
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:25:47 +0000
Received: by mail-qt1-x842.google.com with SMTP id m32so885575qtf.0
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uevvlYfgOpXcBdOPgi1PLyx6eXxlSuyhw6lRRCuesfo=;
 b=TqUjzDnCZmv6DWpuf0cnlhe53qd6a/4tumMZ0fZw9U0qgMuucJ5FWPcQ5yJxnopnKT
 geiPTrEINDWv1Mg13o5dluWxczAZ0EqqzbBXIm7bdy7586rxyBgwBz+B86+nBt9p1Rac
 wzURb9WAoKStN4ih/1eDy3TDPBr4lJp5mnGxzs491XF91MShcz1ODdMXi/viD0CJUTH0
 bLLBPYk/lr/wwmP6ubJmA6AoFVkQi6fxI3T9MYR4kt8ZTPR8gyLAzInU8OJUtyssAsVZ
 jDU21ExK/qtRKXpFZxpNsvRowe+xQeZgmWY8sN9sYBYUfvoTWwX2n7mqIGQxnDgr6FTK
 DmBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uevvlYfgOpXcBdOPgi1PLyx6eXxlSuyhw6lRRCuesfo=;
 b=j1dqfc5artRkyItDQHx+D6tuZK+XDgfxWHPQN1Vc0+/qFqjmiF5/XgzeBXnguj7bhZ
 zu4KC6TcrCeokChsG7QFA8nMQmoL0CCqb7V0jNUXGq7eLNU3fZBRH9ZZAg0ig2//s9Gw
 yCZCOr96UJhotEHKz6HGInBK8j/tHdHDrG7FoNyA2wJMZUqPV3OFOlH1JAspcwheJ//G
 o7KYbWOhmbhVbNc4aUtP1TEF7l1oJIUQasG/3Jho3rOOAyJLdxcbTpgdzepZ4O0uWLkH
 vhYjQh4TjmsPwGuA+MxH5EqYMqB3mjTMdGl2Kre7A9QOBPtyVO7a4qvrRrBdtGmeBfY7
 wNBw==
X-Gm-Message-State: APjAAAUu37MkndqLdga05Mbkgf9eS0I6LGFgbRuDrffJqS8UUL+87zHx
 mJQpSxihl9vQlBrbZ5CMPKRk3Q==
X-Google-Smtp-Source: APXvYqyjVVjWkzvrQizl0QTykiPZBiDOEfoq0Ogb2zru/TMF45dYDtbCR70ikjwUT1A+sxFVf0ucJw==
X-Received: by 2002:ac8:4a84:: with SMTP id l4mr37683309qtq.374.1557944745132; 
 Wed, 15 May 2019 11:25:45 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id n2sm1272422qkk.43.2019.05.15.11.25.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:25:44 -0700 (PDT)
Date: Wed, 15 May 2019 14:25:44 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 3/5] ARM: dts: rockchip: Switch to builtin HDMI DDC bus
 on rk3288-veyron
Message-ID: <20190515182544.GW17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-3-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-3-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112546_186530_BB9D30EA 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 03:53:34PM -0700, Douglas Anderson wrote:
> Downstream Chrome OS kernels use the builtin DDC bus from dw_hdmi on
> veyron.  This is the only way to get them to negotiate HDCP.
> 
> Although HDCP isn't currently all supported upstream, it still seems
> like it makes sense to use dw_hdmi's builtin I2C.  Maybe eventually we
> can get HDCP negotiation working.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
> 
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 1252522392c7..e1bee663d2c5 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -163,7 +163,8 @@
>  };
>  
>  &hdmi {
> -	ddc-i2c-bus = <&i2c5>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&hdmi_ddc>;
>  	status = "okay";
>  };
>  
> @@ -334,14 +335,6 @@
>  	i2c-scl-rising-time-ns = <300>;		/* 225ns measured */
>  };
>  
> -&i2c5 {
> -	status = "okay";
> -
> -	clock-frequency = <100000>;
> -	i2c-scl-falling-time-ns = <300>;
> -	i2c-scl-rising-time-ns = <1000>;
> -};
> -
>  &io_domains {
>  	status = "okay";
>  
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
