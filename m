Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697A3F6DD9
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 Nov 2019 06:23:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/cWyQhqmoxmfPEpGmqFfNbxujXZJtNR0eZR/FUlLTQ=; b=stgqzkjJcvpckc
	mFjEPIhEOmLffQ64nw/Oo1sH/QesMu4tJidlVquMynzU/hjIEZ0Jzkc9obfqeJhzNxkH7Hq6tzV9T
	L8u5UTn22pAGzHj+ri2jd32PPXYBGGmw/apSIWMtBmB6m+OwAMV+1orn+ugeVKK2dLfuymt79oHdk
	uxsHP8v4IJUZTeChfFRb+aPNe9KCTD4cNzpvGT4/r9PfHytHRCyFsx+7HstX2DBDIWvKCnMcP0L6c
	XZS+EhIrMIP6nHDnYCs/R1iUKON5IRr4eO6pcv0Yz5P58bv+2QmjHGWg7VGLa3l3DgEYaHops6gbK
	3FNWKAscITnLmxYMyB0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2AG-00086R-K1; Mon, 11 Nov 2019 05:23:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2A5-0007x5-Ee
 for linux-rockchip@lists.infradead.org; Mon, 11 Nov 2019 05:22:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id k13so8714453pgh.3
 for <linux-rockchip@lists.infradead.org>; Sun, 10 Nov 2019 21:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Wn68B/9oTQwMIS3XezYv2F3iHvuzpiojYbkvmpMuIps=;
 b=OrmjFwvr4biPvwrdT3kD+iqfanRLDTEy+qgIcQW0X6kulRevk5kmkeJoBypeigKALq
 y1VCFkDcyIPv4H7dQXHNCIH2F7D2WGzTza4DB20+hjf009mzaWm5pxLMrJebIetlfMSZ
 2oUcqsxGhobF3XOoVhw19OuiCTP4kYvTu1ZAFc7eB2hdEWHJ5w+hJh+iQikAQBdwxxjo
 U1dRZ6sY7pJe3GjME9fLguElpzgwwviwPcx5r8DfsHPwdMhFgUsxlrhfDqlwfkrQ/CS3
 rfMgtYMURSjBQWPkZa7Rmzw60qlbIwTg8dsKFnsLp+cSwUd2nugWvWycGEjCHK3+V+tE
 HR5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wn68B/9oTQwMIS3XezYv2F3iHvuzpiojYbkvmpMuIps=;
 b=rODq7PQ+fxuRWNv3XT7R3P/PpyfMSQMRQEGew/ild43/Qz0A7b21YJPWFZ5xXbjhVv
 rwbIsiYDG+/rY/57TdG2HrARkmAa0KYsQZY2kwuWnZnH2b/aioBSrzv7bbsuj5kBYVVw
 eBxgx0k4Dm/XPJfA2/TtxmGugCr2RoF1fhnY49oEzGKTP/oHLBxRA3PKfBrtmmG+LKcJ
 3OkRh13OSuE0qnMvuEh4mg4dtvbWItt89ctgpy0WY7Prf8yPbSEcz4uOaJGogbKn9Itg
 /G5X0b/AQrIycvpR1LmtpMULE0YSQKHOp7zrx/NPU3aWw6a4IGQcAOyCuSAyfWpwGw8b
 eggA==
X-Gm-Message-State: APjAAAVsOJ+XXh8qexaWzsX563pGz3O4fdkeu7hOs+Yfe68ZVOYtcF2r
 grEF5+X4GoxilhiEh3swqTFH
X-Google-Smtp-Source: APXvYqwyFuqsrSanrsgjZWam9y+4GIL/Fjuql1Gjr5R6qpTb9d+I0He5/Y2DwCn4UgfPYQhDRvm/pA==
X-Received: by 2002:a17:90a:741:: with SMTP id
 s1mr32134482pje.107.1573449762760; 
 Sun, 10 Nov 2019 21:22:42 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:6309:fffb:304b:b40d:24e5:f9a8])
 by smtp.gmail.com with ESMTPSA id x25sm13239593pfq.73.2019.11.10.21.22.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 Nov 2019 21:22:41 -0800 (PST)
Date: Mon, 11 Nov 2019 10:52:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Message-ID: <20191111052232.GA2842@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111005158.25070-2-kever.yang@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_212249_493978_6DA55A9E 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Mon, Nov 11, 2019 at 08:51:57AM +0800, Kever Yang wrote:
> Add vdd_log node according to rock960 schematic V13.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index c7d48d41e184..73afee257115 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -76,6 +76,18 @@
>  		regulator-always-on;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
> +
> +	vdd_log: vdd-log {
> +		compatible = "pwm-regulator";
> +		pwms = <&pwm2 0 25000 1>;
> +		regulator-name = "vdd_log";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1400000>;
> +		regulator-init-microvolt = <950000>;

The default value seems to be 0.9v as per both Rock960 and Ficus schematics.

Other than that,
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> +		vin-supply = <&vcc_sys>;
> +	};
>  };
>  
>  &cpu_l0 {
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
