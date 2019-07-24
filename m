Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70E5740C9
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 23:20:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ckz3Bp8UbBceJW/ZT3AOkbxfaRje5HsE9hCSDXcvcXw=; b=LeMWGz1fpYgIxQ
	pyaRg8fznL/fbWLF0y1tt9jLVidc05BfswNITmRcj+oy8y85KtCUCXxPKbDhjwbttS5iLOCkMWvYq
	hMnQQO28paLmoZehGa8oZdpM3Z6oMZ7E/6UDV9UvPAAPcCQb2rBwA+XGN5iaDnHgkBatS8GIN/png
	Lr7Idgue4gjqlBG/nXWlTQ6USByQcseIXB9gA93PsImbbq9TEEHvJeVX1ExBkBbR5YDLpmM7QKw/d
	VNkhA/9UqrS8qYsGQZ9qEOpmHPwXocdbJIdRb9jzfkRtcSjw37DFj5aEupSy+kkKJhBXxFBGnjljr
	XQQfaiE7jqzzHSRiiC1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqOge-0005dE-Bw; Wed, 24 Jul 2019 21:20:36 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqOft-0004DN-Pv
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 21:19:51 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so92740618ioo.2
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 14:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U42kawvbKkJEpel5zVan/ikF9rLZvUvs8OMQwcRg1UQ=;
 b=Hj+vv5UDzb40nMOp/TYlwPPAC+V4UscPzE4W3bfNlI7Qb97uhVRuGULd4B00296MSj
 EjBIE+XYJXv2DiYixI2xTEUG2Ph2XZ7Ubm85jxcyt/IVI4nCKYZpit8TBHwruNP9ATlo
 bQ8Up4xTuUPB8AJubgG7inQlixBfoprr1mWVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U42kawvbKkJEpel5zVan/ikF9rLZvUvs8OMQwcRg1UQ=;
 b=UEu5zITMCCekYkVaftZWEb+PlXVYczmznIh8/hvRszBzMJSM28ltIVVH+wgvhfPd9f
 fgHOenGT7k0Sl+5JvYXEvFpw/9EsqOvqJaHO3/EvIPQodo7C5OFcDMVMWHLgQJpDWLkz
 B8MkNse4SDh6JmwDd5tJNJbMhk8TlmUN/RzR1izrm7NqO4VUOJANBZm+wx2mG4rm+j3M
 ILTbFzO8BmJm5W8cWASWAOQxZAlZkzQCX1jy9E1X8YNTzLnqupLFjHDMSIvFEOk8i+Av
 Msqib0rOVf5uQLkOL/SzBmFBxnVvUJOj+djet0O3anXe76UaDRu1qLV/+RE8s0ui5n+X
 JG4g==
X-Gm-Message-State: APjAAAWQQo4drHpozZJjn7GbkehUkqxO0c57YhLD5AEL/DkuQZ/3YqDD
 9yuD4dcT4Ge4tnReAJHf1wEiwP4WDzI=
X-Google-Smtp-Source: APXvYqy86nSCREekvjix2U40BKo3ynROAcvpSJTV9K0ISUCaMVP94J0A1q2DuK6q7Wd7IDx4qrdiUA==
X-Received: by 2002:a05:6602:1d2:: with SMTP id
 w18mr63618830iot.157.1564003188486; 
 Wed, 24 Jul 2019 14:19:48 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id w23sm42957025ioa.51.2019.07.24.14.19.47
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 14:19:48 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id f4so92714382ioh.6
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr73854059iop.58.1564003187386; 
 Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190711223455.12210-1-mka@chromium.org>
In-Reply-To: <20190711223455.12210-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2019 14:19:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
Message-ID: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_141949_880667_FB21E2A3 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> new file mode 100644
> index 000000000000..5d812e9e78aa
> --- /dev/null
> +++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> @@ -0,0 +1,124 @@
> +// SPDX-License-Identifier: GPL-2.0

Please allow MIT license:

// SPDX-License-Identifier: (GPL-2.0+ OR MIT)


> +&pinctrl {
> +       backlight {
> +               bl_en: bl-en {
> +                       rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +};

nit: convention on Rockchip device tree files is that all pinctrl
stuff is at the bottom.  Downstream I think I added comments about
this but those didn't make it upstream.

Also: why did you move "bl_en" here but not "edp_hpd"?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
