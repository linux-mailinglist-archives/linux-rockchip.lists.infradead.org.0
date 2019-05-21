Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2B725A3A
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 00:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8pbnSz7H8pLmBLYZW3pz80CNpdm2uMPkgxqylsWXi0=; b=kJZcUZ8/GWBiyT
	NWmvF7R3yXC+C87cUyywAPLTlQEsh1V03LXaZRGRULpEVpJa3p9hSKN9b50Gix/OuNsG/rWDEH6Gv
	YDQra0Cvfg2SrY8yeN/oWaHefCPeppEFoVEig6SJf984MNmYyII8ERv3HyxaQDPFEwzBVyPx6cgWG
	XhwuIMmKwM3euVEVRBxc7qfMlpwvZZvaHpLG2HMOE5m35ntLOmqyuXsub76ppls6VqsVXcCOCD+Ba
	Z3qH2bX8TlExfg/0Ymb+wBCABCn3pfZFVQtwZLRNjHwE3PBDarF5Yv6EEjspJCTR4hLvMm1e9PBEA
	+UeAk+BFB4FspW5HHqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCth-0006YP-Va; Tue, 21 May 2019 22:06:13 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCte-0006Xk-NZ
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 22:06:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so171933pgp.11
 for <linux-rockchip@lists.infradead.org>; Tue, 21 May 2019 15:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E1DrzXtGDj3hfWXv7sO+LUDSb752frj/M4xDQFuIKdI=;
 b=ZLPsZLBQfDkyWlMuSQTbZZPvBJjcaZBc5GER2rRMijZOokHJ8ij+fr/bcT9/7dIdwb
 1CFYM1rB+bmDU7tm+jgEoq12FdcKNURyTwvdtiHep+LL3Xo6UxzSyCjVo/6qm5NuNPHh
 LxP/IBMmJY9UGDj19FA28SdZ9JsowKVLe5C+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E1DrzXtGDj3hfWXv7sO+LUDSb752frj/M4xDQFuIKdI=;
 b=F5bYFX+roFpFdiBK3bjcce+s3UxiBbGPCjqIkbKIzPHGIwffO0TnArMMak+YWeIsIe
 UsRgcar0DcZmgDa0Z0tFIpO+AWTgpl1mD+6G8kH3Dor+2dWcSCZuJBKYbIHFsC6cxxf+
 D4VmldAhTXTxjUOMyTMMV4NvN6yDXlCSI6JwLkqIUiK3zkO8A86k24sKOiVYvIMxdjQV
 fucIePsgF0uXciYWnZw4ZWXiOXt3lSylin2fSNp5Q6O+cT6HNRqaTtUR4RV5CxQ2fq8q
 aPu2wMpyWmIJ2nosZzMIBT8B8XbSNXnsH51FqDl6Qe8UKeePL+SAQWXVVXs02ucv6gCU
 NXzQ==
X-Gm-Message-State: APjAAAUREBkvhNp4PU34ccNAPNTVdvY1fG7L8VNavo3MleT+MdplwOeo
 qqOta6xl6Kdg+RuLEILnFvpB8A==
X-Google-Smtp-Source: APXvYqzQz7ZxAp6T6WnMzgzo44oFO/MH3Fqa55WCIqK5Qkpj/XDsVrW00b0XB9chQs/5VLWCkFpbsQ==
X-Received: by 2002:a63:2c4a:: with SMTP id s71mr68633329pgs.343.1558476369987; 
 Tue, 21 May 2019 15:06:09 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id f17sm22771652pgv.16.2019.05.21.15.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 15:06:09 -0700 (PDT)
Date: Tue, 21 May 2019 15:06:08 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Add pin names for
 rk3288-veyron-jerry
Message-ID: <20190521220608.GK40515@google.com>
References: <20190521203215.234898-1-dianders@chromium.org>
 <20190521203215.234898-2-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521203215.234898-2-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_150610_784610_95658D2E 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Heiko Stuebner <heiko@sntech.de>, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, ryandcase@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 01:32:15PM -0700, Douglas Anderson wrote:
> This is like the same change for rk3288-veyron-minnie.  See that patch
> for more details.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
