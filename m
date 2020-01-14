Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CEF13A1A8
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Jan 2020 08:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f0WOAKLZ/mtkLU+uQNwOCz31Q+MSKFwWSRdycMMFGk8=; b=oHBaDLNHyR3rKM/wr9QxmvEnZq
	MAd5rYCjekHAbcAzX4fpjNS3WECx6mkKfD7U9cbgWLhJ3RLvqia9OzJeNHV5HsWmmDI9+SlrFnEXu
	OmV23Wo4hDQpRwWE5iWZ2EYBfJUgjv+X2ycRXZ2o90NPxC9CtX3QvrCrRZuS93/5TYIQNGBhV/XQj
	88Xp72j1k4zF9+ws7xArG/69rSlihPgAUam8pgTOmRexDmmUkXOucL0ZWez+l0AsG/BCeW4ENM7L/
	88TDnJxeukB39tK1CKJhsv64wG8XEBk8hIIXyTqDo+05WJH5whjOIPShKC234mW0ztSGK1NMRKUHK
	sSOrlDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGYx-0000mg-Oh; Tue, 14 Jan 2020 07:24:31 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGYu-0000m2-HP
 for linux-rockchip@lists.infradead.org; Tue, 14 Jan 2020 07:24:29 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 983A34D08A;
 Tue, 14 Jan 2020 15:24:24 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5437T140292994864896S1578986620990337_; 
 Tue, 14 Jan 2020 15:24:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <808cfcb29a022183481baf5b4f977dfe>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH 3/6] PCI: dwc: Skip allocating own MSI domain if using
 external MSI domain
Date: Tue, 14 Jan 2020 15:22:57 +0800
Message-Id: <1578986580-71974-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_232428_739851_3CC7239C 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 William Wu <william.wu@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On some platform, external MSI domain is using instead of the one
created by designware driver. For instance, if using GIC-V3-ITS
as a MSI domain, we only need set msi-map in the devicetree but
never need any bit in the designware driver to handle MSI stuff.
So skip allocating its own MSI domain for that case.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Simon Xue <xxm@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-designware-host.c | 10 +++++++++-
 drivers/pci/controller/dwc/pcie-designware.h      |  1 +
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index 395feb8..e78d094 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -257,6 +257,10 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct fwnode_handle *fwnode = of_node_to_fwnode(pci->dev->of_node);
 
+	/* Rely on the external MSI domain */
+	if (pp->msi_ext)
+		return 0;
+
 	pp->irq_domain = irq_domain_create_linear(fwnode, pp->num_vectors,
 					       &dw_pcie_msi_domain_ops, pp);
 	if (!pp->irq_domain) {
@@ -278,6 +282,9 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
 
 void dw_pcie_free_msi(struct pcie_port *pp)
 {
+	if (pp->msi_ext)
+		return;
+
 	if (pp->msi_irq) {
 		irq_set_chained_handler(pp->msi_irq, NULL);
 		irq_set_handler_data(pp->msi_irq, NULL);
@@ -413,7 +420,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
 	if (ret)
 		pci->num_viewport = 2;
 
-	if (pci_msi_enabled()) {
+	if (pci_msi_enabled() &&
+	    !pp->msi_ext) {
 		/*
 		 * If a specific SoC driver needs to change the
 		 * default number of vectors, it needs to implement
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index a22ea59..eeafa52 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -201,6 +201,7 @@ struct pcie_port {
 	u32			irq_mask[MAX_MSI_CTRLS];
 	struct pci_bus		*root_bus;
 	raw_spinlock_t		lock;
+	int			msi_ext;
 	DECLARE_BITMAP(msi_irq_in_use, MAX_MSI_IRQS);
 };
 
-- 
1.9.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
