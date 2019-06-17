Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EA447B12
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiAPoBtkLNBnIHA2J95jT9KdUUOkt+1e78s3lOLC8U4=; b=aEKtdPT0fCEc2C
	I35ZaQcIkGS+x01F56X8j6eNXG2SBa+7fNTpVsJeAwXa5U0V7hpyFBNAYK3EWC2/I42yCsDf3YiQQ
	A6EvPvSA0ay6m62weBV6LuZ7OOhrBftnx7ZKMA2asvtFoC6xnw4OnhUHLiNnGrWvAiu4fnQUEZtH2
	BoceHlz3UcIEKP71+vh5/8LhGUItTJLpczpRakJw15vx8bRVZsKuERzioLMHHXTgRyvlYXYHQOAc8
	KwPgFr10sE3zAY64DLWAVGbxAAzkuiFTjXNMcIbXYviLwMY7z8X8XALC89cLr60fQNLr+bIWqbQG4
	A0oEKTsCgpZ5baDb7UHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCC-0005Lg-J5; Mon, 17 Jun 2019 07:36:52 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmC8-0005JQ-CL
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so5194398pfa.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vmesk4/+DCU1Vw0a90o3w5dTRbiy7VBpAXz9SAe2iFs=;
 b=EUl50H4XAFrXe857NujkPfGIXSl8E3Sti2I37WxIuYRxGvFsvseR9u0P0eOFr1iK6a
 Qtg5MTZ9a5mVDd8HrY31gn3HgfZSYkSrc1Lr/PVVruUiOCH2GbuSAHqiriC6Im+E59+P
 7+StkVZPZ8uEigZur2XIsGUClWInTnzHeW30E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vmesk4/+DCU1Vw0a90o3w5dTRbiy7VBpAXz9SAe2iFs=;
 b=B32RjFfNS5WNaGyD4nIG482UnfG7oRyJHksUDQHdhSd49tf3jHF0y+qy7ebWyk5HFf
 SCfGNT8fqBF1LYgBt6WMilE3a9PyaaESX+jeuk61wnXRn0d6f40xQSGDKgVhUB+fe+cf
 vckqbYol45tCawqRILIqUB9zqSYKBoPwQlRxDpfALVU5XCSHnEjY1lzLsOqIYN+vG0SM
 fyeQTmzQWEAuS1Kr9CP4AH9Dso502wU51FtB7geRrpZZEwMrQ+l/5aJeEIlN5irVnpuw
 rFqOaFG87CZp82wFEbJ5vsi1XWyrCnTbK78Zj2V69z7LWJC9FRmT8mVSCRqGVhAtR1G9
 2Dog==
X-Gm-Message-State: APjAAAX2Y0xYg7akhMpPGisBpBagqUehAHxYArFB/bj0lITvEdxv5xd4
 dB7v1FDPvZmp5D8Ntw8Jcx1VvQ==
X-Google-Smtp-Source: APXvYqz5C3VgnCRci3Ax+c4mFbfgvICuRK2gpBVzSmwc03dmrwuEyjAqu/tWv3+HD/zIWwGnHf2oOw==
X-Received: by 2002:a63:2e02:: with SMTP id u2mr142816pgu.112.1560757007487;
 Mon, 17 Jun 2019 00:36:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 08/99] ram: rk3399: Clear PI_175 interrupts in data training
Date: Mon, 17 Jun 2019 13:01:21 +0530
Message-Id: <20190617073252.27810-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003648_449150_C3BE50A4 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Clear the PI_175 interrupts before processing actual
data training in all relevant calls.

This would help to clear interrupt from previous training.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 20a3e89c17..1898466b4c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -617,6 +617,9 @@ static int data_training_ca(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_err = 0;
 	u32 rank = params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -671,6 +674,9 @@ static int data_training_wl(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -730,6 +736,9 @@ static int data_training_rg(const struct chan_info *chan, u32 channel,
 	u32 obs_0, obs_1, obs_2, obs_3, obs_err = 0;
 	u32 rank = params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -789,6 +798,9 @@ static int data_training_rl(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
@@ -834,6 +846,9 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	u32 i, tmp;
 	u32 rank = params->ch[channel].rank;
 
+	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
+	writel(0x00003f7c, (&denali_pi[175]));
+
 	for (i = 0; i < rank; i++) {
 		select_per_cs_training_index(chan, i);
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
