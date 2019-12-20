Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5744127A15
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 12:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew9Fi/V70cQ3cPmF0Gtu8HD3gVJNCRhMYG3eMNtRLc0=; b=KCLEo5rwv4RjjH
	aoLf4FbZxE6hz/C2+fkpZ0RzWb66kNuG6fPcax8J/UaGblFwG8chVQyyWM5FLCcgz3Jx7X2Xk+Sz/
	lT59+K8A/3rG9uhuKpIRBRGQmJrAmM9XCM1/pvgsH2ywFYmgPXVwoTpRkg2OXbpyWAZ3CrRuuD/9P
	hj0J+VhEwCPLBTXIXwT2x7Hw0PFAJVHym7nTXkj0dH/MrERKILHzCIQI72pNUwbTx4ZpvuE/9UbR1
	VtFi+WldOhYFmHLL8d3yLvIlOJdg4UQUJpUu+byji5PwxGU0QYAciImwTpQDmJRXqdSppYlUPvD3B
	ozC1fUpRHGJQihxK/qEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGbJ-0003k2-Iz; Fri, 20 Dec 2019 11:37:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGb6-0003Xe-Iu; Fri, 20 Dec 2019 11:37:34 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iiGb0-0000CY-Vd; Fri, 20 Dec 2019 12:37:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip, px30-dsi-dphy
Date: Fri, 20 Dec 2019 12:37:26 +0100
Message-ID: <3795174.JdKOkfR0EK@diego>
In-Reply-To: <45c59145-5705-90f9-ff0e-c84cf8d17e8b@ti.com>
References: <20191216122448.27867-1-heiko@sntech.de>
 <12525836.FhlgEYrHGb@diego> <45c59145-5705-90f9-ff0e-c84cf8d17e8b@ti.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_033732_776151_0C57890E 
X-CRM114-Status: GOOD (  15.61  )
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kishon,

Am Freitag, 20. Dezember 2019, 12:21:28 CET schrieb Kishon Vijay Abraham I:
> =

> On 16/12/19 11:31 pm, Heiko St=FCbner wrote:
> > Hi Rob,
> > =

> > Am Montag, 16. Dezember 2019, 18:56:15 CET schrieb Rob Herring:
> >> On Mon, 16 Dec 2019 13:24:47 +0100, Heiko Stuebner wrote:
> >>> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> >>>
> >>> Further review of the dsi components for the px30 revealed that the
> >>> phy shouldn't expose the pll as clock but instead handle settings
> >>> via phy parameters.
> >>>
> >>> As the phy binding is new and not used anywhere yet, just drop them
> >>> so they don't get used.
> >>>
> >>> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip=
,px30-dsi-dphy")
> >>> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> >>> ---
> >>> Hi Kishon,
> >>>
> >>> maybe suitable as a fix for 5.5-rc?
> >>>
> >>> Thanks
> >>> Heiko
> >>>
> >>>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 ---=
--
> >>>  1 file changed, 5 deletions(-)
> >>>
> >>
> >> Please add Acked-by/Reviewed-by tags when posting new versions. Howeve=
r,
> >> there's no need to repost patches *only* to add the tags. The upstream
> >> maintainer will do that for acks received on the version they apply.
> >>
> >> If a tag was not added on purpose, please state why and what changed.
> > =

> > sorry about that. The original response somehow did not thread correctly
> > in my mail client, probably some fault on my side, so I've only found y=
our
> > mail just now by digging hard.
> > =

> > @Kishon, the original mail already got an
> > =

> > Acked-by: Rob Herring <robh@kernel.org>
> =

> merged now, Thanks!

thanks ... just to make sure, did you also see the driver changes in patch2?
As I don't see them in either of your branches :-)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
