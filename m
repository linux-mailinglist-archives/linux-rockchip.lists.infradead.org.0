Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6516A1A6270
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Apr 2020 07:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQLQ1OA2KF4C6djXoq9JdMiUyd22aXB5sz0CsWXHbpQ=; b=ZBRHtxHrrva8sD
	RIzYsCjZ2qL7Pqo1X6uGinwpQlSRw3pQCtgWXHnzOha3OIHvTSHKPNnX150j3TVUwDbPdtHRJJml0
	XNzylmfdXBwZw7bfjE80p85FG57Uu2Hl43Kdy1gBzYqbGWA2DrHltt2cjQqYWjNhZqCXRAxx6sUDy
	tz+TAfR95NxUvk4BXVoioqVZNtmp6cUsamK4E9QlSZFyXfMZZ1MzGYz50RBx1w3XAcZC69xth9I0V
	j701N7F08Hgdx96uKOGz7x7LCryZ0fT/HDu7ZDPA+CIWle/ShjP6J7EgWfnhTuWbZEkjWN9W03+aR
	elvhaCY1cl1OuJLbIHxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNrlg-00085U-5k; Mon, 13 Apr 2020 05:36:24 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNrlR-0007xH-JH; Mon, 13 Apr 2020 05:36:10 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id F0857127B91F1;
 Sun, 12 Apr 2020 22:36:06 -0700 (PDT)
Date: Sun, 12 Apr 2020 22:36:04 -0700 (PDT)
Message-Id: <20200412.223604.1160930629964379276.davem@davemloft.net>
To: leon@kernel.org
Subject: Re: [PATCH] net/3com/3c515: Fix MODULE_ARCH_VERMAGIC redefinition
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200413052637.GG334007@unreal>
References: <20200413045555.GE334007@unreal>
 <20200412.220739.516022706077351913.davem@davemloft.net>
 <20200413052637.GG334007@unreal>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 12 Apr 2020 22:36:08 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_223609_644902_3F12A4E8 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: thor.thayer@linux.intel.com, heiko@sntech.de, irusskikh@marvell.com,
 andreas@gaisler.com, chris.snook@gmail.com, dave@thedillows.org,
 jes@trained-monkey.org, iyappan@os.amperecomputing.com,
 quan@os.amperecomputing.com, linux-acenic@sunsite.dk, andy@greyhouse.net,
 akiyano@amazon.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 LinoSanfilippo@gmx.de, vfalico@gmail.com, kuba@kernel.org,
 thomas.lendacky@amd.com, jcliburn@gmail.com, j.vosburgh@gmail.com,
 keyur@os.amperecomputing.com, mripard@kernel.org, pcnet32@frontier.com,
 bp@alien8.de, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ionut@badula.org, netanel@amazon.com,
 mark.einon@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leon@kernel.org>
Date: Mon, 13 Apr 2020 08:26:37 +0300

> How do you want us to handle it? Boris resend, me to send, you to fix?

Anyone other than me can do it ;-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
