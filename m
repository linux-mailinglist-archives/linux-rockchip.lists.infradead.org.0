Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBD51F9E9
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCiS/5rkAg6/GtmL1uaUUnigDZwnstK6PEtQ+9MTupM=; b=LxRZ3C35n4sLEm
	gXFL2p/xYXHgBsUjj/EiuYA+EFcdYeUzX/JXIJ2rZENUsVLIVd4uyWXyEaCCsU7Maykg09y/Qa+oQ
	tg8fEGW5BvKuWxrDCnXQAgOKa1t0gIHKUhDH1KcUMCpR8URUk25+hG9ruN1kEO6GtCDV1yj6QK4zO
	4lTx686x+bhJyZujnL4x+8wiPHSmflUL/W+9JQLOUhwP4WHufuDo5ELCjDyzxMBqlMAlTELHPCcLB
	3rlOKAPy4x9iv+KFnM36z+eMG5SNOjpRlkk13qpH4BknOyv4QDSPMqvj/CxcG5akd96DLDcdAFmZG
	RqawfEqg2ZwHWvpS0Log==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQybV-0001gE-VF; Wed, 15 May 2019 18:26:13 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQybF-0001Pq-JV
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:25:59 +0000
Received: by mail-qk1-x744.google.com with SMTP id j1so583344qkk.12
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ze14/ZyXsEJTAjqaTo2lTRx3s0ItRZ2g8TsWrPqezoA=;
 b=EjKmmzK4gaGig9/kRlPUp7k1dxcQOfTfpH60q/LrsE/SgieDpD1q0gvpNH6TQ4tFjk
 1kkS929EIWvcDVI/Iw2ykhlxaxBqrx+s4/GGEcQPd6Pya0uZy2IWKniwpSiCizKSh/fg
 DDIA6lUED4xtnPQ+hRekTJ9bcuKmvx2fk1G14CEkPfkHD7NUN1iuolK8YmibOenB3JUS
 KR+DDqXevo4MqhdGQEA1/W3oG/449EBa36KxghqJ46EwDP7jT0znVN/+ULNUP0E6dGQe
 sRTgAwnXUmFRig1ct0llZ8ztKQC6ZDzpk4DGUt49WVfGNEPdwD+c9RPfVFMatHflLcp1
 py/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ze14/ZyXsEJTAjqaTo2lTRx3s0ItRZ2g8TsWrPqezoA=;
 b=RU/uKSrE5cWriD0OJly1qNDtVG6rMYq7JdZzMSIXa5z+Vxxq/k/XNxcifw0V17pTxV
 uvxIBLTqxXzMr5TCGvy1uUDTgkGQG7xWttd6u5o0AVhgq6YLlW34pmkUVz28e57Nu5yO
 E+FQeqEwBDI34czeAmPe5KojFMF/fvCIdh3Ch3nQjvPpTCGwJXo0T8zQweZ9d8v+2//d
 vUM07JVyGWXDfP49GINpKPXKPDnEN0z1P950ni8BTPP17nxEb+9N8LfZSHjqRBHHkiId
 8VFUgKO5opKFc3PVDsH+MxqLR3HfCCa60RGm3dqypMBK//lbThSoqIkkgTjT52WHVR2l
 0mxA==
X-Gm-Message-State: APjAAAUuic8BktvcpNwLLmi1gRIHdb4SYc+x6bA1+HY5XKcXZgd6gPK6
 zlO38UEpM++FndGgaauUVtBz+A==
X-Google-Smtp-Source: APXvYqzE4tU3wB1W/soxDI0IVT0K319tP4nNUGqGgn0iQCnc2JttjgI+YgxYaWAdWbpys/mgpEEGHA==
X-Received: by 2002:ae9:f218:: with SMTP id m24mr25687228qkg.261.1557944754518; 
 Wed, 15 May 2019 11:25:54 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id n19sm1253535qkg.58.2019.05.15.11.25.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:25:54 -0700 (PDT)
Date: Wed, 15 May 2019 14:25:53 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 4/5] ARM: dts: rockchip: Add unwedge pinctrl entries for
 dw_hdmi on rk3288
Message-ID: <20190515182553.GX17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
 <20190502225336.206885-4-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-4-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_112557_738221_ABC2650A 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

On Thu, May 02, 2019 at 03:53:35PM -0700, Douglas Anderson wrote:
> This adds the "unwedge" pinctrl entries introduced by a recent dw_hdmi
> change that can unwedge the dw_hdmi i2c bus in some cases.  It's
> expected that any boards using this would add:
> 
>   pinctrl-names = "default", "unwedge";
>   pinctrl-0 = <&hdmi_ddc>;
>   pinctrl-1 = <&hdmi_ddc_unwedge>;
> 
> Note that this isn't added by default because some boards may choose
> to mux i2c5 for their DDC bus (if that is more tested for them).
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Sean Paul <sean@poorly.run>

> ---
> 
>  arch/arm/boot/dts/rk3288.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 74c9517c4f92..eebc04fa1e4d 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -1545,6 +1545,15 @@
>  				rockchip,pins = <7 RK_PC3 2 &pcfg_pull_none>,
>  						<7 RK_PC4 2 &pcfg_pull_none>;
>  			};
> +
> +			hdmi_ddc_unwedge: hdmi-ddc-unwedge {
> +				rockchip,pins = <7 RK_PC3 RK_FUNC_GPIO &pcfg_output_low>,
> +						<7 RK_PC4 2 &pcfg_pull_none>;
> +			};
> +		};
> +
> +		pcfg_output_low: pcfg-output-low {
> +			output-low;
>  		};
>  
>  		pcfg_pull_up: pcfg-pull-up {
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
