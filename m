Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103AE148CB2
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Jan 2020 18:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4x0D3kvZ83BMZmhgyjxa/oWszpn9188UoID1Sp52Y3I=; b=JalIrs1zWJSWkH
	Bqsa8yRARgvhP++LM5tOxgejy1Qr8tBD6vF84XHFNqsCvtuTXFzCuyVriU6KjRh8yKqY4N1QmO10G
	FTL4Ocuz/BicVhAQASJVwYFmG6VCcpyUmMfkWIfJ78IFMd5gzlpmMGffFRsZlunSDgzJv6VDJ5Tcp
	x9JlwUp760/g5r0mcPIcNIfI1iKvuvt2+ZHdexlUGPrZG0QObR9y7qYMWyMPRAmwzeGdH+4fo/de9
	su6eG3dqV7EGliUx9lBIxPb6gNkLq5h+7LQxvSPoBYivy7PYYJ9+QG3weEENLF7hVDhga1PCeRq3S
	NQJxL+ejorupt/un1wLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv2NA-0001Sw-F1; Fri, 24 Jan 2020 17:03:56 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv2N7-0001SX-5b
 for linux-rockchip@lists.infradead.org; Fri, 24 Jan 2020 17:03:54 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4845823C0hz1rXQ7;
 Fri, 24 Jan 2020 18:03:46 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4845821pH0z1qrYv;
 Fri, 24 Jan 2020 18:03:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id j7orAQPtgjcY; Fri, 24 Jan 2020 18:03:45 +0100 (CET)
X-Auth-Info: 6IDS1kHFaQdyS7mEwQbARn/pF+LQi3twZQkcrfJNgFI=
Received: from crub (p508B64CC.dip0.t-ipconnect.de [80.139.100.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 24 Jan 2020 18:03:45 +0100 (CET)
Date: Fri, 24 Jan 2020 18:03:44 +0100
From: Anatolij Gustschin <agust@denx.de>
To: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Message-ID: <20200124180344.375e3af4@crub>
In-Reply-To: <20200124152735.GR26536@bill-the-cat>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_090353_359114_1873D7CD 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 24 Jan 2020 10:27:35 -0500
Tom Rini trini@konsulko.com wrote:

> This seems like another commit (along with the question I saw about
> i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
> so that we default to enabling everything still but let boards opt out
> rather than forcing everyone to opt-in as it seems like there's a lot of
> cases where people need to opt-in and didn't know.

yes, I'll rework this.

--
Anatolij


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
