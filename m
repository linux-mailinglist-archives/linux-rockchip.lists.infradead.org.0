Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4B79C71A
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 04:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z0veUYCh9lv8uOsR4VpN+/RBOcuErso1dxnCYUgmWck=; b=Lr53B+qMgrq3QS
	zKo0bYuAnoojqjSFz3bFmMYRiyvVTNNSh83wgkqDb6cmY+uCV+fXnZ2onCA9FXTOpdv5BuFOXufQF
	a7mjDnaKs3QwJtoN5hcdH7QY2ovsLpPVchGrfv82oU39PWcoNGoooWrr8y5jRYE0XGps3iPXXHL46
	0joQ0yfvfw+stknbKYGL51s1X7I+XBHgi5HKIrLEG0sf0bb871WM3MKSkx5GvJFogvqiPABgZVU0E
	eULn1Zwg5ioLoZkcwWL/empxIwV3KP1FRa6JNrbq3ywsjexUj0vOPDA/REQ6tmOKOXxqVR399H52E
	7xz7V/9dsDYc5SbPGNww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i24Lh-0002BZ-1T; Mon, 26 Aug 2019 02:03:13 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i24Ld-0002BD-EO
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 02:03:11 +0000
Received: by mail-io1-xd33.google.com with SMTP id x4so33352639iog.13
 for <linux-rockchip@lists.infradead.org>; Sun, 25 Aug 2019 19:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=B6IjoGwq3+84v2Dx+n1mQcMO8hc0mT9rVfgy6HiVPrk=;
 b=HpDcchcDpm2W6iParEZ/1mUGKDraUJRbAG5gBI3LiFOi7tfaCNWf4BQQLoAHVpGtLA
 9RpPIQF50TEf8ozNZBs3BpvdA1wXYr20jKmWxFp1/yc9faBUQt05RpAWgrFBMf0Ofw8g
 zYPESFyC7PIMyoS96IwF5Vkkx62sG4Ak1qNOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=B6IjoGwq3+84v2Dx+n1mQcMO8hc0mT9rVfgy6HiVPrk=;
 b=n8UjOI1JWp+efmTQ1gLit1Vwy9s09Irl+GL5XWmC9RLIvGJTslFHzkoT1pHyAbR8Wb
 HTTk5u/gCu0rNMKB3WEJYCwn/jDppf6MDAjD+14iHgSYujX0V4fnGZqOiu7h7arFIo8p
 wu4DSNXYkq0EavgvFtoCEiPqYI/rA90NR+FAyY7lDAXlUvjvgr99sMJArL8gKj6LGisP
 +BBWkNoGB+rZOwsdBtHjFsHuUplLDXlMW/7HVy93WKtSAiYHzpnHF1TsQpeXX/PzwZkz
 DJrjeyCzra062UVqx+2FrcYqZ7gpEDly7d61vwXDSBtE6MQAKJIoDLAvpCZmlx1971dT
 kjWA==
X-Gm-Message-State: APjAAAU0QSbeOw3r606HANqfqdQaBIuwdt6Rd7i02Ts7fmNh+l4lDQ5R
 xVCkmiVnY1nL9/164uYDbCKjcDV79KPGhLHjSrQ13Q==
X-Google-Smtp-Source: APXvYqx79GwUzr2cvyWYrcv00lzBcR7G3L8Hi9qoqEqYgzLfJOezT/rbarwlf1boGR9rXDhPq28mKXcmN/EHsNpWbrE=
X-Received: by 2002:a5e:8e0d:: with SMTP id a13mr21298185ion.28.1566784987964; 
 Sun, 25 Aug 2019 19:03:07 -0700 (PDT)
MIME-Version: 1.0
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 26 Aug 2019 07:32:56 +0530
Message-ID: <CAMty3ZDn5K44554LYsRY37Z1o1DHd0AseN0QUydBqEYcU-sJ4w@mail.gmail.com>
Subject: dw_mmc: CMD17 Data Error while rebooting
To: Kever Yang <kever.yang@rock-chips.com>,
 Jason Zhu <jason.zhu@rock-chips.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_190309_910669_39D6C41F 
X-CRM114-Status: UNSURE (   4.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi All,

I have seen the data error with CMD17 while rebooting the system from
Linux, below shows the detailed log.

Anyone encounter this issue? let me know if any inputs on this?

Log:
U-Boot TPL 2019.10-rc2-00154-gd6758c282a-dirty (Aug 26 2019 - 04:46:03)
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2019.10-rc2-00154-gd6758c282a-dirty (Aug 26 2019 - 04:46:03 +0530)
WDT:   Started with servicing (60s timeout)
Trying to boot from MMC1
Buswidth = 0, clock: 0
Buswidth = 1, clock: 0
Buswidth = 1, clock: 400000
Sending CMD0
Sending CMD8
Sending CMD55
Sending CMD41
Sending CMD55
Sending CMD41
Sending CMD2
Sending CMD3
Sending CMD9
Sending CMD7
Sending CMD55
Sending CMD51
Sending CMD6
Sending CMD55
Sending CMD6
Buswidth = 4, clock: 400000
Sending CMD6
Buswidth = 4, clock: 50000000
Sending CMD16
Sending CMD17
dwmci_data_transfer: DATA ERROR!
Sending CMD16
Sending CMD17
dwmci_data_transfer: DATA ERROR!
FIT: ret = -1
mmc_load_image_raw_sector: mmc block read error
SPL: failed to boot from all boot devices
### ERROR ### Please RESET the board ###

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
