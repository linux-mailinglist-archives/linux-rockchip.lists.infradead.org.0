Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0BE1A49D0
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 20:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CyRYaK2fC3ORN0JYZEr6x/0Lq0+I9nlL9khgX/qaaR4=; b=dSi
	+G8f7uCasX879v44YVYc5T7fmBWwiZW/dQw5pALwg9rGvdNvB0YpyYzMQ59VGHCZjIwnwEBZeiOPL
	L6BFx4qu880Xph4lZEFQS330n5fkDMQpfBhNnROwqg0wZYvDP81fSAOPJ8h4dUWH3EvjrWAAn7lu8
	JyOzojwTha+kmSeNNI0XYJLftAxE3+4hJ+mE4yYwq1Ds2udeUqEf+O8j4Qr1Z6syegLy0yiCXD8js
	p7H2O8urZ2GoXN6dbqqy+0JQV+mJPtc/xC3SHft26sqwE6BmGTluGuMh49tuFCBcmGWM9JUZ9540l
	gC6aAE2ixkXH8f/cuD7yRISj/V3uUjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMyMz-0005HI-CE; Fri, 10 Apr 2020 18:27:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMyMu-0005Fk-Gp
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 18:27:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id u65so1366630pfb.4
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 11:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=YCFLCRJUNsIXmmqT1CuGLgPNfLC28GDYL8O5InjY6AU=;
 b=gtakOsBhyK6wo9VhVv6Mn5IOXqJ4C8kiQCNIwIyEeWR15s0IQHEN4fF9KSGrmBXfVC
 p+3krhqEVTCMpSSUpyge+E8fdRAklJNfEpBgUtwT4zGP2aVbOSGqRy3uZ0Z63vuqz6v1
 XEIrc+exQ841FKnORcumRm+jC559GyTI5I25o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YCFLCRJUNsIXmmqT1CuGLgPNfLC28GDYL8O5InjY6AU=;
 b=RLG1sKXlgPL9hZcZlOdQFs5Xboio+sU6hsCfVR9Abt1WlFMq4dIU8RrSovb8g5h/HD
 rWPgt8Vramqr5GYBp+BdcmOJbQ+xPQjilgL1azSue58Dw3cTY/PcexFog/K6329auS9i
 0CTQ543JVbSPSPQhzMNhTQRsJOtkE4FL0+UvtFSpAROBxpjMS548VsKaRCm6+vE+wjRe
 /hiBS8xPMK/huIfuNqpNjLvFAqKdITdWnVPuGx9MV1AG2esoi6CDtn8vdEqKVoCj39vB
 FJ2VfvYvBZ/Guluv3ht3PeYzoFOmT11kyX7HYw0pIYiYnQBnhC6YkZ6zvvGdWUyL/Bqs
 k4Ng==
X-Gm-Message-State: AGi0PuZD6mzLJBd5QGAirppPhbbTPAQPn2xtUo2M6z/HqWSxQh3gbybX
 VddEJ7nM/F6V23nCPLYspUFMLQ==
X-Google-Smtp-Source: APiQypLcspfeNA6UNayEFsR4QnoiKHXfXrWQ9AFg5f23nQV5H8oZuJziX8pGcRvw7cjt6tl83E5i0A==
X-Received: by 2002:a62:64c9:: with SMTP id y192mr6293903pfb.26.1586543223664; 
 Fri, 10 Apr 2020 11:27:03 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:e854:42b6:1a5:a40e])
 by smtp.gmail.com with ESMTPSA id
 w90sm2214694pjj.2.2020.04.10.11.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 11:27:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 0/3] environment: distro: Add SF distro support
Date: Fri, 10 Apr 2020 23:56:28 +0530
Message-Id: <20200410182631.11951-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_112708_999423_40A879B5 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patch is based on Tom comments from previous 
version[1] for adding new distro support separately
as in include/environment/distro/sf.h 

This new sf distro command not touch the existing
include/config_distro_bootcmd.h.

Used this new SF distro command in rk3399 platform.

[1] https://patchwork.ozlabs.org/patch/1232666/

Any inputs?
Jagan.

Jagan Teki (3):
  environment: distro: Add SF distro command
  rk3399: Add boot flash script offset, size
  rockchip: Enable SF distro bootcmd

 include/configs/rk3399_common.h   |  3 +++
 include/configs/rockchip-common.h |  9 ++++++-
 include/environment/distro/sf.h   | 41 +++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+), 1 deletion(-)
 create mode 100644 include/environment/distro/sf.h

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
