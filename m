Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F9D1F9AB
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 19:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAGtzDMY2MIi3PK4FZ0HTIfZxhBzPExlRBEmKAgQkGU=; b=Wm+sox6qKsF41H
	i8XIGv5/Xx1KnZHbWpT9He7pmssvaoFhtcnPI+f7qsiJ3Sw9Yjsu3hE7WjGDfi9h/HCmwIOnpw7Gb
	tjmLhSSHdI4dKL52DvVP1MHqbanOnZot43Mbc6MAQpdG4+pDXfTED3Li5bV7WD7+/2hJpKMn5hPj2
	dZkqlZ/ePP8TEVE+cdlbGk1TvQ+7/pcmUw7L1vNp9B1UF5aWVZZYcih517RZ1sSR/dWyRLOEfCjF8
	Ts4YSlTO3fqOl+BRDW4+DWuQ5hQ/bWwidK9ABBOS0uwO0dMKtiIyS4t08B2+gf5gjG69/GH0ymipQ
	hBH5VqgABSmRpqDueQNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyBv-0001Hj-V6; Wed, 15 May 2019 17:59:47 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyBn-0001A6-Uj
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 17:59:41 +0000
Received: by mail-vs1-xe41.google.com with SMTP id o10so490654vsp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 10:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VYGv5m3AMILz51Spmrt6yHEEOb39aK0Gg2jo/Bu5BT8=;
 b=eMSKiMkGDiPhEV6MfHv/8lqxI0ZIJwgTFHaLe+9m7kHkPBaae8ncl6ySq7O3M6a5pL
 mh4fcV39mHessqaqiXbT86R8AQRmrn+GjnwD1D4DsYF3IXresr7LwJhlyrk7UX9qQFsq
 yb4nLY9TjQf6qjO/OLDuqrTfslgVfMW0QzmSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VYGv5m3AMILz51Spmrt6yHEEOb39aK0Gg2jo/Bu5BT8=;
 b=hGSJhE7PlWOawr6QA8GBJvI3+JZBMQ+OjCrs/+WYP6d39ocR2j4/muDbS6oY2SHDW7
 PeuPPZhYTpRpSjj7g1+c/cNR+vyxWgCB01B+ttIVP6nRy/fVpXz81CUmIWOD6us6vTxF
 OSIvnl7kW492UzZfURvcyPnvYpFp4OSmnADwWTExUn6fJE2LlwtgCM6Ldb49zmO0kOCu
 QVA/bxzDbzzqP7f9MoqGJlqqG635ljQulh5lo2NQLHV23bPsG8aJoevdw04na6Fh8MZm
 Y6NKKbKy5X7XEsiywFVEQG05OIbPUSQkedjz4ATGk+a9TkgFGMum3oWjoFT8swhzc7v9
 QuqA==
X-Gm-Message-State: APjAAAUr7OqGQAF7OygP/DhvCwxCzd/AcuOl/5cc0BFF+DUQQHhLlvq2
 6LjSOFyg+9g5RIkocukbjQpRQgjjkmE=
X-Google-Smtp-Source: APXvYqyDHD49yzTulIrM7v8GODv+c1ALd5SyO8PBzxjGgMql6m9J83Jn66MSZiQaYGxEHLAXeTDUHw==
X-Received: by 2002:a67:f715:: with SMTP id m21mr10659753vso.219.1557943177935; 
 Wed, 15 May 2019 10:59:37 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com.
 [209.85.221.173])
 by smtp.gmail.com with ESMTPSA id d9sm4202398uab.20.2019.05.15.10.59.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:59:36 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id v140so257712vkd.7
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 10:59:36 -0700 (PDT)
X-Received: by 2002:a1f:d884:: with SMTP id p126mr20080140vkg.70.1557943175846; 
 Wed, 15 May 2019 10:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190424162827.5297-1-mka@chromium.org>
In-Reply-To: <20190424162827.5297-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 10:59:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
Message-ID: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add #cooling-cells entry for rk3288
 GPU
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_105939_983876_F1894814 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Apr 24, 2019 at 9:28 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The Mali GPU of the rk3288 can be used as cooling device, add
> a #cooling-cells entry for it.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index ca7d52daa8fb..767e62908a6e 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -1275,6 +1275,7 @@
>                 interrupt-names = "job", "mmu", "gpu";
>                 clocks = <&cru ACLK_GPU>;
>                 operating-points-v2 = <&gpu_opp_table>;
> +               #cooling-cells = <2>; /* min followed by max */
>                 power-domains = <&power RK3288_PD_GPU>;
>                 status = "disabled";
>         };

Seems like a good idea to me.  Presumably we should also add this to
the bindings?

Reviewed-by: Douglas Anderson <dianders@chromium.org>


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
