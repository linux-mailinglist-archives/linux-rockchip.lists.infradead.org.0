Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D565AA4742
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 06:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3y4Fzkih2hKNBfsxgm3fY8HLUG15W6yXg6+TQlqwCs=; b=afIyLJBBhAoSFo
	S6QEY9slKQ1YBSTWVM+i5JYcCuSFEic5R5gZBTAeOb/5LIWR34lcAQZ8cUpjC2AD/UD+9YFji0jfI
	zevYwewEBbv9gPdpEOIiHK/B9mfOUhu2/Hbijwr0WX40b3hJ5lLjl8oerOKxckya8zAoOYuimv0Dm
	HdJC6GsvSrUxw6yUXDmhWaIncRXZcj5BN14+2HZlHO6bhFVUBUwIDrda941vBciUtcTiIKYIB+aMj
	L+I/M+X5yWOw7SA5ZsPuhH5bUdXvadcXZmHj0lMhzHncNuwFC4l13YXCDajyZPPqcykXgDOdemAmC
	TQiXUq6Qn9NB3RXvsqGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4HWQ-0001C1-RM; Sun, 01 Sep 2019 04:31:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4HWM-0001BV-7r
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 04:31:23 +0000
Received: from [88.128.80.103] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1i4HWD-00041f-2T; Sun, 01 Sep 2019 06:31:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: limit clock rate of MMC
 controllers for RK3328
Date: Sun, 01 Sep 2019 06:30:36 +0200
Message-ID: <10680012.ezjgmqp5Yf@phil>
In-Reply-To: <1567124807-199633-1-git-send-email-shawn.lin@rock-chips.com>
References: <1567124807-199633-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_213122_434298_D9581736 
X-CRM114-Status: UNSURE (   6.58  )
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
Cc: linux-rockchip@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 Liang Chen <cl@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Shawn,

Am Freitag, 30. August 2019, 02:26:47 CEST schrieb Shawn Lin:
> 150MHz is a fundamental limitation of RK3288 Soc, w/o this limitation,

I've fixed the rk3288 -> rk3328 above and applied the patch for 5.4
together with a "cc-stable" tag.


Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
