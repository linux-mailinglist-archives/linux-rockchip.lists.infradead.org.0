Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB23216B092
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Feb 2020 20:50:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+XqxY3rx5qrAqICpg4eaUZG1hgUPjdPcqSs+CfUZvY=; b=S3yb8NH8Xoq3aq
	Sy9D68s90OXzQobG9Cx1p+mgtdEfbxt13Vkezm4v/YDL+iPAJbwGKexm4pD3UBml6WQ4Hlc4KG3on
	rX1P2fNwnGYbTt8H5spDYphT/BCNJCTgti2Dt7/DPBPfpNEMgRs9XGk+/NLWAFj/hDXRf+A9Enpae
	oCB1X3kBhTgBM/wbNL4TfYyPIEH0nOF+w3TlmfPJ/6E83Rrr7QxoxbGr1XOBtX2fQNuE6W2WZV7zV
	CamBc9XCYKgGMO+UZcPgvz35IcABuOL8Ap1sG6zggTgORDd1H91V4r53KUaY+5NMPOWg7kXRlcHXN
	x9YnyCpgix/kKF6jfFDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JkD-00041u-06; Mon, 24 Feb 2020 19:50:21 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Jjw-0002mW-OS; Mon, 24 Feb 2020 19:50:06 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A1700120F5DF5;
 Mon, 24 Feb 2020 11:49:55 -0800 (PST)
Date: Mon, 24 Feb 2020 11:49:52 -0800 (PST)
Message-Id: <20200224.114952.1670161895162956201.davem@davemloft.net>
To: leon@kernel.org
Subject: Re: [PATCH net-next v1 00/18] Clean driver, module and FW versions
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200224085311.460338-1-leon@kernel.org>
References: <20200224085311.460338-1-leon@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Feb 2020 11:49:56 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_115004_800675_122814AC 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
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
Cc: thor.thayer@linux.intel.com, heiko@sntech.de, irusskikh@marvell.com,
 andreas@gaisler.com, chris.snook@gmail.com, dave@thedillows.org,
 jes@trained-monkey.org, iyappan@os.amperecomputing.com,
 quan@os.amperecomputing.com, linux-acenic@sunsite.dk, andy@greyhouse.net,
 akiyano@amazon.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 LinoSanfilippo@gmx.de, vfalico@gmail.com, kuba@kernel.org,
 thomas.lendacky@amd.com, jcliburn@gmail.com, j.vosburgh@gmail.com,
 keyur@os.amperecomputing.com, mripard@kernel.org, leonro@mellanox.com,
 pcnet32@frontier.com, nios2-dev@lists.rocketboards.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ionut@badula.org, netanel@amazon.com,
 mark.einon@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leon@kernel.org>
Date: Mon, 24 Feb 2020 10:52:53 +0200

> From: Leon Romanovsky <leonro@mellanox.com>
> 
> Change log:
>  v1:
>   * Split all FW cleanups patches to separate patches
>   * Fixed commit message
>   * Deleted odd DRV_RELDATE
>   * Added everyone from MAINTAINERS file
>  v0: https://lore.kernel.org/netdev/20200220145855.255704-1-leon@kernel.org

Series applied, thanks Leon.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
