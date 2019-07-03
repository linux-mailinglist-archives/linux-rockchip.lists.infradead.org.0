Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FFE5E166
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 11:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JrieD67aMunp8Xii1exIK6O/S3XVZpi6R9ks+XFd3zQ=; b=pcYNZMOHo3POqe
	x4pPyXPZcuoCZdTGqKcfJbWWQ6s/BE9Qxxt0FZ+Sq5nvRJspeCxkbOTe5+cVwWihfXRo9viP7gL8q
	A8/2lINi3cnCQy6HEfhpggMvIVp1rye3i1v4rgx17s+6xlLnshpMBnyHesm5wxdF4Hy2cmvPUxW6J
	UDL7OVoxxDwoPaBiH1q6Z60gSJUqaP0syrO1ftr+a386Fw3wXYJxZ1T+aph8w6ux/6pgcFKXy9WOF
	G8YsLh4pAW6Nvp8VHnyNxiM69BMR7VAzuBsdxM55Ge7zenKWQZuoQwfRzBVIEUPM51Hf5z2fvXaAC
	BogW6GL8sqaHcpAXQG6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibvZ-0003R1-UP; Wed, 03 Jul 2019 09:51:50 +0000
Received: from dougal.metanate.com ([90.155.101.14] helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibvW-0003Qh-0N
 for linux-rockchip@lists.infradead.org; Wed, 03 Jul 2019 09:51:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=simple/simple; d=metanate.com; 
 s=stronger;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FsG5of+uogpMKIH8K3uyNKGNXBJ5USBikcfZgWGQm/8=; b=Jf++4RD1yPfm9SobiBV3MgNpmS
 vWHTVY7UHqkPY13KYgZmuoO6/Y+955jVvtN7gf5IUXWQMQkukydG+5Kb3SHDHfS1Vm694kVfYPFq1
 wcc80C34pPUEAzvBD2ueaqkZ24hYOaeuhWOm40tDlNMM5ozdSrJdqNGDgIGD9kuvwXVUb1VcfyHVR
 U0TxBB58FtOfVJje6m/LMlfXmeH9ZFe/V4IbVdZRm8zEDdRXmCUFnYh2ixYC189f+Dub2Z1w7cMsw
 /EJf/Ple/didf0VyGP4ueggdtGGPuAWH+1YwPHbtyFCTuQgzygWpmXDZ+qz+j1fCH4B/uyC/CS0b6
 0ysU255A==;
Received: from dougal.metanate.com ([192.168.88.1] helo=localhost.localdomain)
 by shrek.metanate.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <john@metanate.com>)
 id 1hibvN-0007n1-RF; Wed, 03 Jul 2019 10:51:37 +0100
From: John Keeping <john@metanate.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/rockchip: fix VOP_WIN_GET macro
Date: Wed,  3 Jul 2019 10:51:11 +0100
Message-Id: <20190703095111.29117-1-john@metanate.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_025146_461054_8CCF5775 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, John Keeping <john@metanate.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Commit 9a61c54b9bff ("drm/rockchip: vop: group vop registers") seems to
have unintentionally changed the defintion of this macro.  Since it is
unused, this was not spotted but any attempt to use it results in
compilation errors.

Revert to the previous definition.

Fixes: 9a61c54b9bff ("drm/rockchip: vop: group vop registers")
Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 09a790c2f3a1..a3430da3c008 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -79,7 +79,7 @@
 		vop_get_intr_type(vop, &vop->data->intr->name, type)
 
 #define VOP_WIN_GET(vop, win, name) \
-		vop_read_reg(vop, win->offset, win->phy->name)
+		vop_read_reg(vop, win->base, &win->phy->name)
 
 #define VOP_WIN_HAS_REG(win, name) \
 	(!!(win->phy->name.mask))
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
