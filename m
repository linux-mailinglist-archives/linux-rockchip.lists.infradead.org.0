Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A004101F89
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 10:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veuUNX8XMrt8OlqfEi9ZTd+JwnNJUEj5TTbY0ooI5BQ=; b=Wl6Y1Xfj4pbVOO
	AKS+oRt43vkH00VKhfvS0ylZfQdRhkt27XOWUpMJ/nzzLy8sTL6S6EKi1X2SS/hB/j/22altLzqWB
	sH9aE0Rb0OXcQNGWHX4GaTA/+sHBbzLHWfTagL0ZcyQ7xtQx4dCB4JyZ6d7WmQHT1/+obo1p6yiFA
	W+epY6MZ2lCdM4e7AJueIwLZKSWCPxB8gApR4DAru09GAcwFhl8DuHd4tTsVg6UukZrhYtPp6RX1J
	Vrz1mZTCi7Mp0vdszX/zGnZsChqhhYM4CnfxrCceVrJhDlXt0CJ6IWDRMctzWt2nmI6N1PW38ruy5
	mcRXyHKTqLxzFIp9Mn/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzWd-00039v-B5; Tue, 19 Nov 2019 09:10:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzWQ-0001qy-Py; Tue, 19 Nov 2019 09:10:10 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWzWI-0004Dg-Jv; Tue, 19 Nov 2019 10:09:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable MTD Flash on rk3399-roc-pc
Date: Tue, 19 Nov 2019 10:09:57 +0100
Message-ID: <6728270.yCOpIldRRh@phil>
In-Reply-To: <94f44e1d-86c6-1e32-aa63-56edbd7d75f5@fivetechno.de>
References: <94f44e1d-86c6-1e32-aa63-56edbd7d75f5@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_011007_008048_E65079AF 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 18. November 2019, 13:44:54 CET schrieb Markus Reichl:
> rk3399-roc-pc has 16 MB SPI NOR Flash, enable it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied (yesterday evening already)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
