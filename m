Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4024445B77
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 13:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIYS4fWofEatnMRgoO0aSEL75oNGPcM/OlDJqNIj7B8=; b=dQ+GzDSCg7bvG7
	qZpJH8gWSyJBxlSsJYctTnd97nxYL+t0RXc17g9Hu9vIel7kiejMY19mD8aOfS6G73QHu4hGnrk7x
	Yf29j5P1UHTXVmvBIafO+VxZfXT0KWiOaxGwz6TKBCFbFJXBx0o5DozVjq71VPm/z6YKMja9HMC+R
	qgZkWaFzHJ7QYQanm08Jm6E4Nk638Gx/qK6PFnFa57YAox3JyzaTQ/9DbcVJddy1ra5z7No0T53/R
	WCgNnm5PtOhb+M708vaByRi6hmVxXmgQEP+CBs0rq5LFJxRaFOI3x/M28XbOtXGLe6JRd/Vx6Lsu0
	CQ2jwiiNTRSzrc2eJNDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkQv-0001qI-V1; Fri, 14 Jun 2019 11:31:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkQe-0001gE-J0; Fri, 14 Jun 2019 11:31:36 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbkQa-0004le-TG; Fri, 14 Jun 2019 13:31:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nick Xie <xieqinick@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Fri, 14 Jun 2019 13:31:28 +0200
Message-ID: <4121108.4RU3k1uWxS@phil>
In-Reply-To: <CAP4nuTU1BjmpXk5zqWTjBVyO=1ks-Rn65ryaxdQ=GiGa+VK6-A@mail.gmail.com>
References: <1559035267-1884-1-git-send-email-xieqinick@gmail.com>
 <2074921.iWOsiWxYGh@phil>
 <CAP4nuTU1BjmpXk5zqWTjBVyO=1ks-Rn65ryaxdQ=GiGa+VK6-A@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_043135_604392_953DCD10 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, nick@khadas.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 10. Juni 2019, 09:19:52 CEST schrieb Nick Xie:
> Hello Heiko,
> 
> Thanks for your review.
> 
> > Both Captain and Edge-V seem to be identical from a component point
> > of view, so should likely share the same dts, or is there some major
> > difference coming later?
> 
> This is the first patch to support Khadas Edge/Edge-V/Captain board, so I
> just add basic dts nodes.
> 
> For Captain has more peripherals then Edge-V, so the dts will be different
> in the future, but it is the same now.

Sounds reasonable, thanks for the clarification.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
