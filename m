Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC771E68D1
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 May 2020 19:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WpxUEOCgGxlfiOH7Kb3DEIJnHN6XBHMFY0r+x12sZ+A=; b=t9KJxnQFPoU9Ba
	W3bv1yv+iw3HadyTR+yeN7ALfAk4GC0+rTrbiFV5Z6jpc0eU28cvAL2mnY8sYOuStircad2rEC+wW
	d5CfNWtkv34QwCpZdvxVynNiY1HV8S+EoftBHrqrm7RjZJcl49O8x3dZcWsbP6xpSfMtD0odlcLJw
	BYktUTmti0pou6kLlrfJgSkB4VbXaKZkgOUYYFbkUia0Gvxp45lZMRy/a95iyKHhg6KgTjWtjXqyf
	qagHHe3JDxu68QJ2vlYvxUK4T/2OxyNPWQ1nMZMOFaRYoh0ysBwI+2v3LwsDBh/nWz5ovFAvFQS11
	nL5vJxHCKENh8u1BSVaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeMan-0006hK-Mo; Thu, 28 May 2020 17:45:21 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeMak-0006gh-I8
 for linux-rockchip@lists.infradead.org; Thu, 28 May 2020 17:45:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id C2A9C37CC72C;
 Thu, 28 May 2020 19:26:09 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BUbnoqicuD8a; Thu, 28 May 2020 19:26:05 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/1] Add fuel gauge to Pinbook Pro dts
Date: Thu, 28 May 2020 19:25:49 +0200
Message-Id: <20200528172550.2324722-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_104518_747848_30987DED 
X-CRM114-Status: UNSURE (   4.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

since the cw2015 fuel gauge will be supported in 5.8 this patch
adds a node for it to the Pinbook Pro device tree.

Best regards,

Tobias

Tobias Schramm (1):
  arm64: dts: rockchip: add fuel gauge to Pinebook Pro dts

 .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
