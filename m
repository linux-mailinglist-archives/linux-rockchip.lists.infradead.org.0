Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA71128656
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 02:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8PDNfnKlYO3nnyTiy88zZm0Jtvgbw5oZyAGdkEsd5I=; b=GGztroND1cmgwV
	jANDwyL2ZPtfpBX07xib/y7HFWzuzKC+cmb01mUJDXk2+LSUvdfr7+2h27jJe3HS2qdgFr/5G6NwG
	JqTjOf0NFhTvDMWVYek1GkDmCSoXUt6E2KlWIlMubiukqCt/xnNkiPhwvDuisq/qhEqA9HXRy/k3I
	DvwB7fXgQNMge+HHHU6Ypv4fyIBcaT3CdFi40YA437c28QLVumboTCQp6Rqc7XNM14tIwFUpOWlw/
	2hG/LmDvPKiJIncgNoW5FP0PYTqq6756AweoOP2R9EttkgKBzske0YYpc1YIELkDUZUFL7zLXGd5C
	yU3hI0LgJGCU+EqJhYlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiTRa-0006zm-LF; Sat, 21 Dec 2019 01:20:34 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiTRX-0006yJ-OC; Sat, 21 Dec 2019 01:20:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 17:20:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213435628"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Dec 2019 17:20:23 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iiTRO-000F5x-L7; Sat, 21 Dec 2019 09:20:22 +0800
Date: Sat, 21 Dec 2019 09:18:55 +0800
From: kbuild test robot <lkp@intel.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH] fix ptr_ret.cocci warnings
Message-ID: <20191221011855.qmnf2jj5cetedtw6@4978f4969bb8>
References: <201912210950.pcZYpwwW%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201912210950.pcZYpwwW%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_172031_798683_AA3B1A9B 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <helgaas@kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: kbuild test robot <lkp@intel.com>

drivers/pci/controller/pcie-rockchip-host.c:628:1-3: WARNING: PTR_ERR_OR_ZERO can be used


 Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR

Generated by: scripts/coccinelle/api/ptr_ret.cocci

Fixes: 069ade5dfec9 ("Merge branch 'remotes/lorenzo/pci/rockchip'")
Signed-off-by: kbuild test robot <lkp@intel.com>
---

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b371ddb94fae82b6565020639b7db31934043c65
commit: 069ade5dfec93dd2916a85df8b1bab2d578857bd Merge branch 'remotes/lorenzo/pci/rockchip'

 pcie-rockchip-host.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -625,10 +625,7 @@ static int rockchip_pcie_parse_host_dt(s
 		return PTR_ERR(rockchip->vpcie1v8);
 
 	rockchip->vpcie0v9 = devm_regulator_get(dev, "vpcie0v9");
-	if (IS_ERR(rockchip->vpcie0v9))
-		return PTR_ERR(rockchip->vpcie0v9);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(rockchip->vpcie0v9);
 }
 
 static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
