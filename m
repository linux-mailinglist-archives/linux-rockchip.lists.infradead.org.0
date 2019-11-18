Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A621FFFC87
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 01:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=np8yvJvAK0DMhNtB4yHdNvKDeUIcBb8OnwKYDJfo4NY=; b=V8qHEFP2BV3ehY
	LhNck2vEZz8uWgDzf7RGzbjLqAsbriJw8F353u2mGj0MJ8xCReCGNMoqGEWpwUyl3clqkhhsbQ8VR
	yB8GiXROQsRAZm4i7Y6ireQTAoJQ/NXp+hTcLIr8fhmpQ4mJvo7nhhRmdvEMMElFaetejK8enGVcn
	w9fs8AfQDvIPl0gJLf7SIJylD18LJyLXYYnhkDAvBaCnyblJ7l1xWJz5oRBZoWld2I2PqVIUNAUlX
	WGs36gjoNEK0UnMdaOM+m7JDNADTXTSzoaxzCaPDvvuiQJ4KxdM3HNaw9Mfe4/OBaxaT2gSQOvVVN
	rfD+ucui9V7lppYH+R+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWV8V-0000ua-6k; Mon, 18 Nov 2019 00:43:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWV8B-0000ZL-Li; Mon, 18 Nov 2019 00:43:04 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWV7z-0003d9-Ve; Mon, 18 Nov 2019 01:42:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulators for pcie on
 rk3399-rock960
Date: Mon, 18 Nov 2019 01:42:50 +0100
Message-ID: <2743598.oTfX2hMREy@phil>
In-Reply-To: <20191117140728.917-1-linux.amoon@gmail.com>
References: <20191117140728.917-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_164303_853908_222A5452 
X-CRM114-Status: GOOD (  10.43  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 17. November 2019, 15:07:28 CET schrieb Anand Moon:
> As per Rock960 schematics add 0V9 and 1V8 voltage supplies to the
> RK3399 PCIe block.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

applied, after fixing the property/node ordering.
I try to keep things mostly alphabetically :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
