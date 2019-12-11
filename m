Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575C011C102
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Dec 2019 00:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk31sjy7KA45tbqD7J9YtL8KqBBXebZbjlTFhdXiss8=; b=J8eUmD5xKLIYgk
	yf9sLqD7ULH0KnGgdfPo0gQGXg8YaEcoZxEGxgo5aZRDTlBkSSRrH/s1EiYeuVjMVVZtOjqX1ASeU
	GaLi5JbK70zAn1bQtoV2Dt8QNuTR9NPCLoFBARJvz3PcA9ecZDmmltCD7HRGpmxlhKBe5U6QFnQWv
	w3PSzSa3Xs/dpmC+yliFgn6A0ejCrLUMj/WnueeEDZySdBSeeqF+ko1SRfGm8ZyCgnRxo3SPFJlMq
	d2RKXGftiy/pOOHdgm1SttD/lqW6TPPiAHKQVySDmkBMmTHzSHh2AkYmnHDwUFXxKoGPNV03tMkEN
	xGY+nLGq0kwcFrrFinGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBpa-0004FQ-Dc; Wed, 11 Dec 2019 23:55:46 +0000
Received: from mout.web.de ([212.227.17.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnI-0000sK-Ew; Wed, 11 Dec 2019 23:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108389;
 bh=Jw3d/3FG5d2fs3pbP5cmR9tz+imTkB9FfgldNiz16/M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=QHfjrJCvhmuCCnSf1F/RiTE3u7NdGsOyiro4sUDoDIQ+BV6PzAODPhHh1Cl7rbGB8
 8g2zq0CxIlQxFOZ0mVoVjj+Q1dN150ZDpr5DsCsqGUV2gw/Iy4detaBikD0SXnkeal
 jfU6VBuWfOIv7zxNJOfScJziWrGpu8ob2L2xUIF0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0Mhlmh-1iJYJC0mhf-00MwBd; Thu, 12 Dec 2019 00:53:09 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 2/9] brcmfmac: set F2 blocksize and watermark for 4359
Date: Thu, 12 Dec 2019 00:52:46 +0100
Message-Id: <20191211235253.2539-3-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:vMAckOgNBxG6cLi2IX3dVxNnAjzrN9nQcd36iOgEGjn7lSyOXK0
 nMmPQF96FpuS9n/OnUjpHNPcWxW8ctz5fO3ibNoNVUPj3EW+6zvheCwlxSOOoWs2gDf+gmY
 p4EirClUV1rcJdk7pgxNeOvTWz8mX1eiqcst5vCJFqdAHlgxEYhaMFLTEBK2i2tiRaxBzO3
 pyg4nxvbZPxpAHrGgvnZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jm6PikBj8do=:bhZOh8ji0Cm3PXLd8vpAhB
 c7KTXi1ITKNxCijfIlhgJKvVQDYDAgkGWFdQSKy8WVmVRRXjzTWL5dkSRcpZbYZT/kCdMcv5E
 cNSQdgYK9OoY0+QUPV9M6+5lAymFlzhjrWU0y/umHkgscJK/l68t/ge+xV3POxR16m3yKl7gd
 T0AU3Mgz18RmHQkB4gvRZQFaVjhOpjZSkEALjU6Iy7ZaupVXQdtoVYtU7YSe/9KFNOlYkj/Qe
 O3mcXMoWArV1bPPx17Q3cKaW2i6ChTMC/jQ72Yvi6YRe0EhXtioF3tmX/LSJ39ooaE4pAImRG
 ndHMqmA/IRXkgv3jlUo15fPBeexloNFrLg3B5pbHm93CtWSEHTVAcBzKAltK62RA5mMEr4+cO
 Y4BXPf/v13ZlWDcYmg1w82o7cNvdfTY8EFaOBLDjqK1jJUescVSc8NRlVyhsoJIPvUcXOzfmU
 WzR3GUagJ3/fyh7xa9+SNFjYsFJHVcQHB3nidL3DRYLpLXFYNKR/n4YJU5ijEFPDW7xkN7t1l
 DWfMyWI1bptx9yK9LIxdqp0fFTQN8cD/qhsYm8bhpwK5Pn6FRvDdGpat8Waa63I0pwwcopikT
 cAsvWGN4c1iPzgGFNE/qOtxMMrqL/l3Hls/oPoSnV4uixQnBxq/Sr5iLaFUiv2pP8z1H88nmb
 AarpNGmk52LtFUOR0qKhO+BbhVIWbXCbb5ZGHxF9GA5nDR3dcRXWmNiUvxCTUYEoU6hFIw8jQ
 8TvU7ShRQGjZP+vkv2XBVSzzui4MdrIRyLF8OZh0UgLbWB9tZY+inDhGDa9InOmK6Zn5mCzKs
 kDs4RY/KRp/OvNeOSDgnGuP3yGa06aWA08lfMkhnGYrbLdRRNvcrXLc2RjcbtD/T1WAGZdD3L
 LFYaaq+YmEHK8+AnSb8rmAbor0ynGp0bLYpo02c3kKEVKToJ4QvjbzROrOmiNYn/bhdxIn2ML
 ku8R3r/eRwZzOMVfVoAR/soNZiV2eXN5VWj5aPvRwpCKiy0Xieo30PYkIvapF8asgJ/IoD9bQ
 1ho9MkOstO/z4yfARCHWHePoYq2FaymEsO0tKpr+J5FMbsC7lPoPoVKvq3FfHUFDbWfyz/j08
 YcpsQ05Po3tDeao9xyk0cO2kZ2kA25ic2TeifPRDQow9ogTTTSYhJCrREBtQ3wljTE9g0MG0L
 9N2Rw16Oitu46gwY4aR3zUIlM6itQMAuZF1Imj1Zrbj2dk1Ha00y/U9Id/PqaUSR1JB4ifYan
 N5MNtNk3cmZwBbpmRKtsp9azFnviVwGUl/Yy3vw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155324_808753_6E01E1A8 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Chung-Hsien Hsu <stanley.hsu@cypress.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Chung-Hsien Hsu <stanley.hsu@cypress.com>

Set F2 blocksize to 256 bytes and watermark to 0x40 for 4359. Also
enable and configure F1 MesBusyCtrl. It fixes DMA error while having
UDP bi-directional traffic.

Signed-off-by: Chung-Hsien Hsu <stanley.hsu@cypress.com>
[slightly adapted for rebase on mainline linux]
Signed-off-by: Soeren Moch <smoch@web.de>
Reviewed-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
---
changes in v2:
- add review tag received for v1

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c |  6 +++++-
 .../wireless/broadcom/brcm80211/brcmfmac/sdio.c   | 15 +++++++++++++++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
index 96fd8e2bf773..68baf0189305 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
@@ -43,6 +43,7 @@

 #define SDIO_FUNC1_BLOCKSIZE		64
 #define SDIO_FUNC2_BLOCKSIZE		512
+#define SDIO_4359_FUNC2_BLOCKSIZE	256
 /* Maximum milliseconds to wait for F2 to come up */
 #define SDIO_WAIT_F2RDY	3000

@@ -903,6 +904,7 @@ static void brcmf_sdiod_host_fixup(struct mmc_host *host)
 static int brcmf_sdiod_probe(struct brcmf_sdio_dev *sdiodev)
 {
 	int ret = 0;
+	unsigned int f2_blksz = SDIO_FUNC2_BLOCKSIZE;

 	sdio_claim_host(sdiodev->func1);

@@ -912,7 +914,9 @@ static int brcmf_sdiod_probe(struct brcmf_sdio_dev *sdiodev)
 		sdio_release_host(sdiodev->func1);
 		goto out;
 	}
-	ret = sdio_set_block_size(sdiodev->func2, SDIO_FUNC2_BLOCKSIZE);
+	if (sdiodev->func2->device == SDIO_DEVICE_ID_BROADCOM_4359)
+		f2_blksz = SDIO_4359_FUNC2_BLOCKSIZE;
+	ret = sdio_set_block_size(sdiodev->func2, f2_blksz);
 	if (ret) {
 		brcmf_err("Failed to set F2 blocksize\n");
 		sdio_release_host(sdiodev->func1);
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index 264ad63232f8..21e535072f3f 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -42,6 +42,8 @@
 #define DEFAULT_F2_WATERMARK    0x8
 #define CY_4373_F2_WATERMARK    0x40
 #define CY_43012_F2_WATERMARK    0x60
+#define CY_4359_F2_WATERMARK	0x40
+#define CY_4359_F1_MESBUSYCTRL	(CY_4359_F2_WATERMARK | SBSDIO_MESBUSYCTRL_ENAB)

 #ifdef DEBUG

@@ -4205,6 +4207,19 @@ static void brcmf_sdio_firmware_callback(struct device *dev, int err,
 			brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
 					   &err);
 			break;
+		case SDIO_DEVICE_ID_BROADCOM_4359:
+			brcmf_dbg(INFO, "set F2 watermark to 0x%x*4 bytes\n",
+				  CY_4359_F2_WATERMARK);
+			brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
+					   CY_4359_F2_WATERMARK, &err);
+			devctl = brcmf_sdiod_readb(sdiod, SBSDIO_DEVICE_CTL,
+						   &err);
+			devctl |= SBSDIO_DEVCTL_F2WM_ENAB;
+			brcmf_sdiod_writeb(sdiod, SBSDIO_DEVICE_CTL, devctl,
+					   &err);
+			brcmf_sdiod_writeb(sdiod, SBSDIO_FUNC1_MESBUSYCTRL,
+					   CY_4359_F1_MESBUSYCTRL, &err);
+			break;
 		default:
 			brcmf_sdiod_writeb(sdiod, SBSDIO_WATERMARK,
 					   DEFAULT_F2_WATERMARK, &err);
--
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
