Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BE9263EE
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 14:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dForYMgifd9gHHx6HEvhjl1HeQnMJxcmyQwBnqbdNu0=; b=sMZVFyKePbHsCW
	XE57T1Pdp9wfNwSm6RerqC0BIwlcBo8c5GclXkfCWKzf7Dcv3pXoZKEcjLPnL5H8HGIsmPmZb9cnY
	1adw6Cy/g8+ORNsGKewDTfLw71j59bcF3eRqcRwVzHNrqr9Yn0jNem/1gB5h7wVUuIRfURvQTfzWc
	eU6dKCnpeFDIAANx+FujQq7rwD3LRZBerbHrQdzihcPI3vAkUTu6CkvJrlffsibqh5McxJF1C6JVj
	6+NTXeciuNdZ+09rToi0TsKp5mOkShD47iDqtTm1oV26FvrTNC+RS+NOqBSOMOb0blhrpuOdcm6gT
	i2kRuf97FzLLaZ2KdWaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQSb-0006Lo-E7; Wed, 22 May 2019 12:35:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQSX-0005lQ-VR; Wed, 22 May 2019 12:35:07 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hTQSR-0000lq-OK; Wed, 22 May 2019 14:34:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
Date: Wed, 22 May 2019 14:34:58 +0200
Message-ID: <1805430.MCm2xJzUXA@phil>
In-Reply-To: <f0581341-126a-5733-3c4b-8e6f67bfc32e@linaro.org>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <2174314.1vfUlvne1O@phil> <f0581341-126a-5733-3c4b-8e6f67bfc32e@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_053506_190181_3765D8DE 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, huangtao@rock-chips.com,
 Doug Anderson <dianders@chromium.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>, xxx@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 22. Mai 2019, 14:30:16 CEST schrieb Daniel Lezcano:
> On 22/05/2019 14:27, Heiko Stuebner wrote:
> 
> [ ... ]
> 
> >> As this change is now in mainline and is causing veyron to hang I'd
> >> suggest reverting this change for now. Even fixing the root cause
> >> (maybe the one I pointed above) after this patch we will have the
> >> thermal driver to fail because "gpio" and "otpout" states are not
> >> defined nor documented (a change on this will need some reviews and
> >> acks and time I guess).
> > 
> > I definitly agree here. Handling + checking the binding change
> > as well as needed fallback code is definitly not material for -rc-kernels
> > so we should just revert for now and let Elaine fix the issues for 5.3.
> > 
> > Anyone volunteering for sending a revert-patch to Eduardo? :-)
> 
> I can't right now :/

ok, I'll do the revert patch then, so that we get this sorted.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
