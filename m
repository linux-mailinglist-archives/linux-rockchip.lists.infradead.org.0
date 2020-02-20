Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34309165EC3
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 14:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gkRS1EEz3jU81dZ7NIlyHXscWz1k5as5YBgMa9Fa7Vc=; b=IGb
	Uf/ghFM9JeZTE/jLkVcU8ornsG8/XknJGnXZtgWBC304367DzSlaOGwqvw7UMQlmWO/SO6FhufjOy
	F9Pr21HgDIbArcB+kDfrDJrWuVrlYkRe+Q5Wkwza2SqeTWaEgPcsjFFYowfX9ySY/GYkR/Ryp4owa
	pMsQFEpe7pUj75nrOR2Qf5P+pgQ/s8FtQ4S76zek5LFRy9aP5CxF2nS8x9/hTVBmsDatPVoeqZvce
	1zzFlg/l1z/INRqH+t9iYAqU99xzma+X4Msvx8MlnCerBzNty8B21LlvlSVz6BNH6C8lSynsHl7vv
	jX9PccxLRopMj/xIMFwfEpJyJMg5j1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ls8-0005Fc-AW; Thu, 20 Feb 2020 13:28:08 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lrw-0004yN-Am
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 13:27:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id 4so1930934pfz.9
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Feb 2020 05:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=hF0MYOxyxn24x/ZYtlarhD9w/8tgL/0AbysCyIWUqB0=;
 b=lWPdtbceOs2cC0MFwqkm4JZMtIDewpsnrzs+5eIkhjoMV2SJvYChWk3tQPO3sjcpkM
 0JRFxORvBnqb715+jTuwsvbkljzaEdBcepRokDPscyhItPgPH+t4fPcI5jox0PwRS3BU
 gv11eSFh0I619wG7GnAGNs+xrvC5o5Bj5h+wo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hF0MYOxyxn24x/ZYtlarhD9w/8tgL/0AbysCyIWUqB0=;
 b=UKtb3mwj9O9Q5wp05X4YshyYQSTkuGaUX9PzrNT1uyqGxa8N9tqXbGcBslgkB8ac/t
 yQ84/vlirefpFo881XBl0f5U+xRR1kaW8ltG13Lw70HmNVg3kdvgNSLaScBeVfDx6TgU
 XaJcQ3iUn15Xp8QpDKEiGXUQ92ioLlLtx3K8a8QAE7wyHNkfZ3+Ib4AWT2Xr62K2v/v7
 fHVOjLJLLLhKjMICmgfWH+guBeN8U1ch4q63lBqywukV+tMkm071z9LydpYYN8v9xPK/
 lwh6nzFK99oE7fIfWyirsGtPPJ/SJOPImR602gism+9ZIYw/My8idjZij5tHfq0zUkgj
 NBxA==
X-Gm-Message-State: APjAAAWYIkYQoGXZRMvzTCpdjtcG80SAbp8I8Uo8JrVg8gJqYQHd9Euz
 CrmpU/zn+123IjzH3EDKM4NIeQ==
X-Google-Smtp-Source: APXvYqwLKJcZDrK2vGjpR2o1+UZVY6CiHiTRMZ76Tp2Fd8qa2KqcFHdMflOCt8bmXidsxemy6zDUHg==
X-Received: by 2002:a63:df02:: with SMTP id u2mr31473112pgg.403.1582205274678; 
 Thu, 20 Feb 2020 05:27:54 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.34])
 by smtp.gmail.com with ESMTPSA id 84sm3974646pgg.90.2020.02.20.05.27.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 05:27:53 -0800 (PST)
From: sunil@amarulasolutions.com
To: heiko@sntech.de,
	catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: defconfig: Enable REGULATOR_MP8859
Date: Thu, 20 Feb 2020 18:57:39 +0530
Message-Id: <1582205259-15274-1-git-send-email-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_052756_457763_A355A123 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

RK3399 boards like ROC-RK3399-PC is using MP8859 DC/DC converter
for 12V supply.

roc-rk3399-pc initially used 12V fixed regulator for this supply,
but the below commit has switched to use MP8859.

commit <1fc61ed04d309b0b8b3562acf701ab988eee12de> "arm64: dts: rockchip:
Enable mp8859 regulator on rk3399-roc-pc"

So, enable bydefault on the defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Note:
This change set is applied on top of linux-rockchip, branch v5.7-armsoc/dts64.
(git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git -b v5.7-armsoc/dts64)
This change set was tested on ROC-RK3399-PC, an rk3399 based target.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f21288..973a493 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -505,6 +505,7 @@ CONFIG_REGULATOR_QCOM_RPMH=y
 CONFIG_REGULATOR_QCOM_SMD_RPM=y
 CONFIG_REGULATOR_QCOM_SPMI=y
 CONFIG_REGULATOR_RK808=y
+CONFIG_REGULATOR_MP8859=y
 CONFIG_REGULATOR_S2MPS11=y
 CONFIG_REGULATOR_VCTRL=m
 CONFIG_RC_CORE=m
-- 
2.7.4

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
