Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A461366A
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 May 2019 01:58:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+yEiSdeYjipcwOgBpXFamuRfX5OdB6ovPjcw2fTi9U=; b=s++MbDEI+NSWQc
	hKtanlL/1M4KVdt6ch803QX6LKu2FCfnWcGp+utJzlb2mXsM+Z4LRT8o4OhcuTGgb2atDWITT7QMu
	0YQg1xC7kCLefL4TQiyunjwatp02yg8KAtJU2EC/+c0c6L2vevyDfyd4GmDYrPElvGozCs5vwFBBV
	DDR+MR4U/8aZnKJzQNs8P8xOBZraCM5xuK7n9sDm06NkcZdV/29Yq1GTrW0IhNOkg2A39R7CjsNPi
	EsoDRO5tZ2n1dRi1rPnQ5DsM6B8RYKA6PBqUYC6+kLwzpSCT4ye7viU5Nis5/hmu+KkxTXkPEvFPy
	h2/nNWd0dLk5p3QN8PHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMi4K-0001Oc-AP; Fri, 03 May 2019 23:58:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMi4B-0001Hc-Et
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 23:58:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so3430086pln.9
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 16:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v7+8a0jOi82vA98ZW8MLz4Zxp+tPvn5pEZ3hYsxU2i4=;
 b=KeUBh5m7XrqqJoGtrD6Ib6knt5i2ib8XP24NKJEJyGpAwUOaLX/x7UY2/uecLPiyDe
 9yyqjXnlM7Sdn7qZVIKCfp4lijNioihmlVmSLfE2FTzxpqPXWb817IqTmUzMWrglz7sL
 SQh/iyPbwkDdI8Zm3zUAt91zibej3pbV7DGpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v7+8a0jOi82vA98ZW8MLz4Zxp+tPvn5pEZ3hYsxU2i4=;
 b=cGwDOg9y1NXeuZMZNRbcAb3t0uOA1Agyx1rnK9i9i2I8IvVhYSg5EIU6fv4GoWzKV2
 DDXt+xwsdUazfYn20U6Rba/8G193s7xsAsJHmjkoDVkgymGmFb56PDNUzqdb8EWU5H29
 ++KXgpZ1481Z+DGv5hf/edB4ZJmVeoneB46Va7LZEP9eITnGKHS76DXjdbmStZ/xMgIm
 qvIs2mSYjJMIUtUbEwchGVqcSixyOB6T0QZakgxjGE/mO5wSMnajvqnCoZInW5gFJ3ml
 SolsgpSAOs70Zy5omAUIzx0IHD06jA/sKNJOinmpANPrG3oFsLgTJiEPT1+kJzVTEWub
 Ijdg==
X-Gm-Message-State: APjAAAV79LBOFJhshblmwFY9UJibPgGjJfDWaR+xcCstHbpurpEnO40B
 JbO0Azow58PSk/v7ZtUDIiDDoA==
X-Google-Smtp-Source: APXvYqwCj3vkQhdXIGJu9EpWV0sc4q41te3mEjK0JRvTex2+xk1qSEGE3uWqGCe5EwjRzmV9owoA+A==
X-Received: by 2002:a17:902:7207:: with SMTP id
 ba7mr13779305plb.329.1556927890867; 
 Fri, 03 May 2019 16:58:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id h127sm4092709pgc.31.2019.05.03.16.58.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 16:58:10 -0700 (PDT)
Date: Fri, 3 May 2019 16:58:09 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from
 rk3288-veyron-mickey
Message-ID: <20190503235809.GD40515@google.com>
References: <20190503234814.230901-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503234814.230901-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_165811_555232_7DBDAC1E 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 amstan@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:48:14PM -0700, Douglas Anderson wrote:
> The rk3288-veyron-mickey device tree overrides the default "i2s" clock
> settings to add the clock for "i2s_clk_out".
> 
> That clock is only present in the bindings downstream Chrome OS 3.14
> tree.  Upstream the i2s port bindings doesn't specify that as a
> possible clock.
> 
> Let's remove it.
> 
> NOTE: for other rk3288-veyron devices this clock is consumed by
> 'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
> need to be consumed by something similar.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  arch/arm/boot/dts/rk3288-veyron-mickey.dts | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> index e852594417b5..f9c4ece3c0d3 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
> @@ -142,8 +142,6 @@
>  
>  &i2s {
>  	status = "okay";
> -	clock-names = "i2s_hclk", "i2s_clk", "i2s_clk_out";
> -	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>, <&cru SCLK_I2S0_OUT>;
>  };
>  
>  &rk808 {

effectively, 'i2s_clk_out' is not use in the upstream kernel.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
