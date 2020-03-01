Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C33DC174A53
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Hwf0Z7lcExL2UPqIVtdmR64nALIYZZVLY8sJfYFVNs=; b=unXDeH57UBmIWM
	qw1LdudiyJEz8B4wM/tjcJJ7Od4zVk7X32NbPXgJLsEi+FOYsQBmeCMptHPqhE4DbQ71bMVUfwZ7N
	hPVP5BfekQskoxeSIV/pP2tFERNdAJHNJD/+z+FreL99mp9EzcLh412QuMZyaQzlJsCUhyf1gJbw6
	84gwzaQKZScQfny9yxmmc7umk28VmJ03+6PtX3CPIZTcluxZ7yutSVrk/mhLS3eiXrMdjeyTTcPxS
	MAd8nm+a1RwRKglbG2NKNVcxBRtUAUTEiX8KcZpd1ogZI9q6K6Bm28E0RZ+j0hw92/wGBS4NldjnQ
	aAWGKsLNCgo0HmNLJp9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8C3p-0004ts-Nc; Sun, 01 Mar 2020 00:02:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8C3e-0004ko-7U; Sun, 01 Mar 2020 00:02:11 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8C3a-0004tG-JZ; Sun, 01 Mar 2020 01:02:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, dianders@chromium.org
Subject: Re: [PATCH 3/4] dt-bindings: arm: fix Rockchip rk3399-evb bindings
Date: Sun, 01 Mar 2020 01:02:06 +0100
Message-ID: <3089122.gegXmbq47i@phil>
In-Reply-To: <229c3511-d99d-8bac-6241-0088c5fc13ef@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
 <78b8b53f-2e2a-3804-41fb-bb2610947ca2@arm.com>
 <229c3511-d99d-8bac-6241-0088c5fc13ef@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_160210_420637_EEFDCE3A 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 28. Februar 2020, 14:28:36 CET schrieb Johan Jonker:
> Hi Robin,
> 
> When I look at the review process of rk3399-evb.dts
> it is mentioned here:
> 
> https://lore.kernel.org/patchwork/patch/672327/
> 
> >> +	model = "Rockchip RK3399 Evaluation Board";
> >> +	compatible = "rockchip,rk3399-evb", "rockchip,rk3399",
> >> +		     "google,rk3399evb-rev2", google,rk3399evb-rev1",
> >> +		     "google,rk3399evb-rev0" ;
> > 
> > can you check against which compatibles that coreboot really matches?
> > 
> > As we said that the evb changed between rev1 and rev2, I would expect the 
> > compatible to be something like
> > 
> > 	compatible = "rockchip,rk3399-evb",  "google,rk3399evb-rev2", 
> > 			"rockchip,rk3399";
> > 
> > leaving out the rev1 and rev0
> 
> The consensus in version 4 ends in what is shown in the dts file, so I
> changed it in rockchip.yaml. Things from the past maybe can better be
> explained by Heiko. Please advise if this patch needs to change and in
> what file.

Just get rid of the "google,rk3399evb-rev2" from the .dts please :-) .

(1)  "rockchip,rk3399-evb", "rockchip,rk3399", "google,rk3399evb-rev2";
    is just wrong for the reasons Robin explained, I guess that slipped
    through review at the time.
(2) "google,rk3399evb-rev2" was a specific variant for Google I'm pretty
    sure they'll have scraped all these boards directly after they had the
    first actual rk3399-gru development devices

So I'm pretty sure the only rk3399-evbs in existence are the general ones.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
