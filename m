Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F5112D879
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 12:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyAXCNu71CKLpZhs8qePAdYWK3pjnlTvjA9+njcgTeE=; b=my0+NlF8b7BCtU
	fFYaIfqX6fwMvJsi498TJvYoawBrvCKjZOp4pYuviaHwmhdhTf4EmPjnmjSclGC42kAQIonyHTdft
	A0B2/A6grvtS+Ytrv9XUP5p/uGvnpZPtnY98HsXPYMM6RcVpeh9b9qgRdcptFbD/awmxuUSMe50KA
	ygjvTXLeK19Rc3jdaM6JoK6VwxIb9buAESrM6VuMtBURpLpTKLqrpKYtVPAOMQehAFeswRyvMzdLm
	4j5zH6TjH6JdYjqhvQt/z7QjvMaBCr9IQQ3594kjoRQB2ioq/LJOvxXyc3AqUUdqDXovb3TWF3H/+
	/rikaWSiTih/z3zv56XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imG5D-0008UX-8s; Tue, 31 Dec 2019 11:53:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imG4s-0008Fg-U6; Tue, 31 Dec 2019 11:52:48 +0000
Received: from [217.166.244.239] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1imG4q-0003ro-6W; Tue, 31 Dec 2019 12:52:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3328 idle state
Date: Tue, 31 Dec 2019 12:49:18 +0100
Message-ID: <2504090.zAX3tiq27M@phil>
In-Reply-To: <a8c83e705d387446ea8121516d410e38b2d9c57b.1577640736.git.robin.murphy@arm.com>
References: <a8c83e705d387446ea8121516d410e38b2d9c57b.1577640736.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_035247_116303_B75DEF72 
X-CRM114-Status: UNSURE (   9.55  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 29. Dezember 2019, 21:16:17 CET schrieb Robin Murphy:
> Downstream RK3328 DTBs describe a CPU idle state matching that present
> on other SoCs like RK3399. This works with upstream Trusted Firmware-A
> too, so let's add it here.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied for 5.6

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
