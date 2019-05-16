Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D076720E18
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 19:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCHfe0Ta1zQyvjYsFHk614/iPDcJQMsUm0PQSWaKVEE=; b=qsxQ2SjSSKtJDE
	qYNcrsKVKCDNcaF+5mX4bSze1HNbTb6BWKI0joUMXGsp8VcaSgx2uHq1VpvUJK2o+4wE7KUYppaq3
	ZWLgoPyLPSN8Y1+SJh41b88sPyY6iL6uE1HW8WD2Usl0GLcMye6sgeGMmkteXp1zc26cvPs8KpGyE
	3ieuordqoit2sKHVD5S6eGwN7EcxdAkC7P8NkCyzBe4A6/ApxTp2ys4e4e7qvSdrxEx2YIHCgTDaB
	IOuEmdja3hiMQUa8/+YXfRiw3MC26x1UqoexQqk8rrbEmLFx/JMZQBydIaBFJZnoP26T0wXzf2GtP
	UBeazxEdq4bs+pZ/iTOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKMA-0008UX-3f; Thu, 16 May 2019 17:39:50 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKLx-0008Fp-3L
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 17:39:39 +0000
Received: by mail-vs1-xe42.google.com with SMTP id o10so2834349vsp.12
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 10:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=btkYXyszYOl4enkQNj6rF85Z8K5s124rQC98XbJLKTg=;
 b=Jb1d/6dTS1pvv/Mc3sngMU2XidRneSla0eokNz7UyBI0yOzrq5vCgombW1gG1LdKUz
 Z5kTaogiXfzaxz4CCpB/AezBDqTNpXyLbqEZlHFmcTaBm69PYrg8A59ElJe/LJnc4gz6
 GygFEMTkuX9hdSY7oSVpDZbJJBD05Vgp574Ec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=btkYXyszYOl4enkQNj6rF85Z8K5s124rQC98XbJLKTg=;
 b=KYJfnUSYhmzoT9RxDXM7647ec083i+n23jSJn75crqt0XB6aXRoWKSdx8xGmefgLrC
 pxr41qCVvsrFJzBvUKGBB9th9Wz1gRJCF9gEzbOxESfd+gZdmX93jBhGSCpmqB3n4kbc
 71+B5WJqmt23fYyWujBXvrgspTBlEapMMjCPNwDrY8qoj9O6u3Jr+YayITTycb2M76lq
 N14/mC/AJVqkBddJ+4JrbeF11/VNRrwfcw2mn/pFmvovn+FlWnOacuYpLdbNrYMEePeA
 LRCTJtvf7dDZeR/TfXinan7Z2dj5zNXlABjl/dlfK5dh/vLhsJkEOznTMRNsthr+V8Yh
 xWBg==
X-Gm-Message-State: APjAAAWwoiRlPO+4+K/lc928/TnHzwAkLO20SC+OY8Opt9ERLcL0lb3x
 hvx57lNbgyDyEgHeNIxlDaICBlhCqgk=
X-Google-Smtp-Source: APXvYqyb/D9G7/bXj8x9VLSqxQ8zUSQONry/Aj5FPMIXkWgFbVlRhOih2lkOrKqPPY9GLTTUQx80uQ==
X-Received: by 2002:a67:ebc1:: with SMTP id y1mr5204513vso.16.1558028374760;
 Thu, 16 May 2019 10:39:34 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com.
 [209.85.221.171])
 by smtp.gmail.com with ESMTPSA id j20sm894547uaq.5.2019.05.16.10.39.31
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:39:32 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id h72so1249762vkh.10
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 10:39:31 -0700 (PDT)
X-Received: by 2002:a1f:1e48:: with SMTP id e69mr23173110vke.16.1558028371386; 
 Thu, 16 May 2019 10:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190516172510.181473-1-mka@chromium.org>
 <20190516172510.181473-3-mka@chromium.org>
In-Reply-To: <20190516172510.181473-3-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 10:39:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wk0EFO2+c=KAfemo0_w+QEA8==KzOdN-niD0mA_myh=Q@mail.gmail.com>
Message-ID: <CAD=FV=Wk0EFO2+c=KAfemo0_w+QEA8==KzOdN-niD0mA_myh=Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Use GPU as cooling device for
 the GPU thermal zone of the rk3288
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_103937_303206_B24D4AD9 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, May 16, 2019 at 10:25 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> Currently the CPUs are used as cooling devices of the rk3288 GPU
> thermal zone. The CPUs are also configured as cooling devices in the
> CPU thermal zone, which indirectly helps with cooling the GPU thermal
> zone, since the CPU and GPU temperatures are correlated on the rk3288.
>
> Configure the ARM Mali Midgard GPU as cooling device for the GPU
> thermal zone instead of the CPUs.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

This makes sense to me unless there is some better way to model the
intertwined nature of the CPU and GPU temperature.  It's my
understanding that the original device tree snippet was there because
it was added before the gpu node existed in the device tree so the
best we could do is to suggest that the cpu could cool things down.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
