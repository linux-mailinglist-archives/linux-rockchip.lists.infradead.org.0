Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCD216404D
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Feb 2020 10:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3zRJblH7U5dukWw4tl22W4CDKRy5nZYPVgHJBz5saCQ=; b=CsJ
	qYyTstXI9bnbbclpcDH1wg3V8dDxV4aFZ08As1DKNkkySKZCT77tD2g0TK0xKORkNZubstjtZfCbI
	8yaGh1GZY8kR7gBbBOmubgAzm1z29LlCk1DI7ximElfRNh1aKDF4SA0d1P+n6zZumCSAIQRgKl6Uu
	VAGtvIEoDEHgSVsbUcMXhWuLOOiSfj/zkuw9kh5pnixnI6xg7RbAdojdxu9dugsiOR6DR+HDOWM0X
	mpNc9yeFJgtrHcs10I8lnoOfLmqrxIVc2OfO8VvwjKrF/bVilAQ/gd2kT3WK9Wgq2yZL/YaRkSCcl
	yX6JRRnQhlLMmy+yBdptWFITgiA0rpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Laj-0002Cc-KO; Wed, 19 Feb 2020 09:24:25 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Lag-0002C8-Cs
 for linux-rockchip@lists.infradead.org; Wed, 19 Feb 2020 09:24:23 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 9so16821940lfq.10
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2020 01:24:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=lI8lZr3Q3Bv+BxRvVTsssQojAeFkMdB+LDsyNS6mCI4=;
 b=tPIxlXBFsbhy4WoRk5bRY12TUnlLFyBv+DHYsi613mMPdRDM4D7jFKsLSosyaTZTBJ
 nuD+V9N6P2Nr9qO5TKbPh5FGQccE8lT3GOMUb35GwX81VPj2nlNP/FvYv0FGTKE37AjI
 dK9Eo+gzdMJfEynM3p0kQFTaKdd+1jvVLbBrLjP1ybiO5sVMXyeHF2tfOoydJPjxKNOy
 ulz1fUhHRKJIr9UGNu3oRQvSZPFp+Wdb6SiaLvl46wNtsqJTqqrLaexDxz8YWZYVHFzh
 9iYSQR6GWeLVXoCJaYfGL0HInBfUuh6w/vtnG5SoBv1k4VkhbT6ZooTnWxo6g34vV8Q8
 MPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lI8lZr3Q3Bv+BxRvVTsssQojAeFkMdB+LDsyNS6mCI4=;
 b=tGw1AyH9AUY7V5REXLcu6P9IVPpZkXBLnluV1jNdLtaMMQQ84ef767x6eoseZ5TI2q
 NspRCOaPOCIO45oZwHN0WT2Zvbw9ogl9FRNFDoAFoT92hRe9edVklNehzsg90Yy5CzxA
 zd6fEcXHstYtsY2hDL22snladKRqfKhv4EAQh2+Oh1v0YDO1e9w3XKB6TY4bt+TeDi5I
 maWwp41ob5IcaVTBqCKlz7hmOO2XgJX3JOXQ+Sbtnp8rX/l2+hlaPOXSMv+ZYU3QR1oO
 9AASeDyBH5pbmEJABPkdeBPMznJouH8F4h9oJM7DqG+3XbavSDQvcDVXSn5k0cbOWmKY
 y1dQ==
X-Gm-Message-State: APjAAAXtrnyKDSe0j/1i7BSp9bi5iF7Oqs9DGoLHq1ypTilG/4tRgb10
 3d5LCbFN+EvFRK8JApwdzjYjpUOQ5kGdX9adbMTX4FH4R5k=
X-Google-Smtp-Source: APXvYqxzq+56vOn2zkT2RbxNsY95oSgpgBR0XDNVZLBSA9Kazpif4rYhLFKp1LNU3d4ZZ8DvTq4s3cFIxoCXDxxTZv8=
X-Received: by 2002:a19:4cc6:: with SMTP id
 z189mr12443902lfa.171.1582104260368; 
 Wed, 19 Feb 2020 01:24:20 -0800 (PST)
MIME-Version: 1.0
From: Feichen Shen <jackshencn@gmail.com>
Date: Wed, 19 Feb 2020 17:24:01 +0800
Message-ID: <CAOqJxtbgbd_RQv6bo9kpU4JJmta-2tMBdMAu37Wy+OS8PfYJjQ@mail.gmail.com>
Subject: rkisp FIFO bug in YUV422 mode at 1.2Gbps
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_012422_462841_E0878A4D 
X-CRM114-Status: UNSURE (   4.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jackshencn[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

We found a bug related to the rkisp driver when MIPI is running in
YUV422 mode at above 1.2Gbps x4 lanes. No issue with RAW 12 or RAW 10
mode up to 1.5Gbps. It appears the MIPI hardware FIFO overflowed even
though ISP processing is not required for YUV.

The issue is detailed on github with dmesg log.
https://github.com/rockchip-linux/kernel/issues/204

Thanks!
FShen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
