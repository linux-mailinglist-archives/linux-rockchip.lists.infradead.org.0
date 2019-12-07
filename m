Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB760115C18
	for <lists+linux-rockchip@lfdr.de>; Sat,  7 Dec 2019 12:45:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkaTKiwWDTqrlp7xXNvZc2IqnLJcJTILCOtxlV4+H+E=; b=jkhj+R70Q1NSWD
	7Y6KC/DgFkrmv9uZ8hNCKktJaZXg4piE0HP2xPZwcsToIEWkVr/8iSQd8M092eWTEb3Tqz+1y0l05
	CAdJ2g5+o2aD4BHLkgVhr4077+CuPIUjFYmO/H28g5mACuio9jU6mVVimAmi7CsrSIsXm9SPBvK4P
	owZUmfpAaSSqyjhVvzbMl/AWjqqgOOVoqdXmvCDyb5xcVHfBgm47QcxToPJkhysm6VGZY1lN+Rj6L
	4T2qjgpEre0LU7lOKpVOBRChSJQ/ouNGFUbSSt67gowgbTS3HAbHVXfxkDwbjQ/YHo8N86BS7VIz0
	BTT/bgYxz5Ub6QvwbD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idYWf-0001mm-2s; Sat, 07 Dec 2019 11:45:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idYWX-0001h4-EB; Sat, 07 Dec 2019 11:45:23 +0000
Received: from p57b7764d.dip0.t-ipconnect.de ([87.183.118.77]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1idYWQ-0007Ld-0z; Sat, 07 Dec 2019 12:45:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Sat, 07 Dec 2019 12:45:13 +0100
Message-ID: <2344728.Lq3kATiBNL@phil>
In-Reply-To: <CANAwSgT_k5VgtQcP_vOX4Goa-9_B6GmXP+i-hAwpZuTRVTPt_Q@mail.gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <1765889.rfqrfT1PbY@phil>
 <CANAwSgT_k5VgtQcP_vOX4Goa-9_B6GmXP+i-hAwpZuTRVTPt_Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_034521_624580_7A39567A 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Daniel Schultz <d.schultz@phytec.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 7. Dezember 2019, 06:07:49 CET schrieb Anand Moon:
> Hi Heiko,
> 
> On Sat, 7 Dec 2019 at 04:02, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Anand,
> >
> > Am Freitag, 6. Dezember 2019, 19:45:28 CET schrieb Anand Moon:
> > > Most of the RK3399 SBC boards do not perform clean
> > > shutdown and clean reboot.
> > >
> > > These patches try to help resolve the issue with proper
> > > shutdown by turning off the PMIC.
> > >
> > > For reference
> > > RK805 PMCI data sheet:
> > > [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> > > RK808 PMIC data sheet:
> > > [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> > > RK817 PMIC data sheet:
> > > [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
> > > RK818 PMIC data sheet:
> > > [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> > >
> > > Reboot issue:
> > > My guess is that we need to some proper sequence of
> > > setting to PMCI to perform clean.
> > >
> > > If you have any input please share them.
> >
> > The rk8xx pmics may not on all devices be responsible for powering down
> > the device. That is what the system-power-controller dt-property is for.
> >
> > So that property is there for a reason - to indicate that the pmic is
> > responsible for power-off-handling.
> >
> > Heiko
> >
> 
> Ok, my intent was to have common framework for
> shutdown, restart, suspend, resume routines.

That is a great goal actually :-)

I guess just keep in mind that it should only handle power-off
if instructed by the devicetree property.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
