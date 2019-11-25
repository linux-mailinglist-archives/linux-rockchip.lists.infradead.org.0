Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEED1091EA
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 17:35:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G6nclh7KYpnORZIAivps+d/6wsTINYmTFbMCumFyQcs=; b=fUAxq+PWQDaIxu
	L/DUG/cksbBafPYAkbVDxECGsWxDEg0RlcxnAeBaYsBL0ZsEBfB/c+2lUY8OGRTLv3ZMLK6C+zby6
	zmlB7zUA8QT/9mO9FiSB8L/dXGo5brJ5p2nW7dqPZvGVUPmHQTAMWx4TMVyoRdOGdKbA55LmYMP24
	DxRgzHyLxboIl6MQ67py+HYzRDX+IPgLX3T6EhI8+dEB6h1SA0gDTNWvvsYaOv7Nmtz7DFGQ4jsjr
	ZLbFzFpWdu5u516BIJqP8wtUIZ0A0zY0Hy5xSOw2/34HE4ta5ssiZSQRN/vpAFlFKP+eztYIiB++B
	nc9BUXlwIIEZ1GzmiINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHKV-0006js-Fr; Mon, 25 Nov 2019 16:35:15 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHKR-0006j9-Ds
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 16:35:13 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id cv8so5978520qvb.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 08:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=WPQIqvxAfQiqyBpfjn04eG5LOmRRnOH3SKi0PIFJmyY=;
 b=siAnd5A13DlEWjb2qzI0c3ulVaZ+d5g+jGt91tv7Mt7C1CGC/66lvdKlHk8WjBrGgT
 fFEWCeGNiDdedxcN8OmbRvq3c/mFFHrCJLWwEBvOveFISkoyf15Ki8vSIdIBgvvKMiR8
 OD4xxL+W+ZcCg6tKx2oWhvWVqNulTyzHplB1wQDzQoC+XYj87lTDepB055G4+1ZKP2RB
 yyr97RF8y7GRMPtgR2plGw81BbW0foUGmKqyiGT4PkTqr44T7jWiwTXodpQ7ZjfVgxVk
 wH3tH0OlFAhdMtCaKSfuy27+371NPWA1EkaC7MZM2m2oMKYhbFMMGC+PfRm3nYU4lO6P
 GNzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=WPQIqvxAfQiqyBpfjn04eG5LOmRRnOH3SKi0PIFJmyY=;
 b=TQHrrJlgVIbO+JSrKYfTBQ1650jKcW6tdd9Ma+EsYd+aqQQ5MUooxmRyZEOp8WaptN
 3w28u1N5kMNGWQ4uuMXzLT/BcdLOgN+WUCkeArTlmHfw34YdJI+llq3onPRlGO+LOX5X
 uDRKXdZJqtrOB9KWykrHVLxGRimRuhgxEbukGNWEF88dxtIKifJAJ3sWGHjxLnON65X+
 e7K06KXkApGOv+CWBQ9YEV6B6v1LJP5Q5gX/Bfs186xXM76fwKrRsGxCATjuji+vErWP
 Oer5daJX3merehURhNi+78wZzBb8NR8w+0VJMkX7RLN7EuY8Y3jtMlIIqOi9VLFn2Abj
 EDIg==
X-Gm-Message-State: APjAAAXUkoQTRh2BzuSSgcH68PQPzH1UlSQrrzI/ovnUXTXWlSe3pRlF
 sUKoHu1+jbhzfk1zgKtoJtzfKV1msJfZ99EFEyy5Ww==
X-Google-Smtp-Source: APXvYqy1VyP2xuMZOji6JpZnSUFJQUTXmdZNnFpfaEGHsF0FlQbRFZC0iVu2vuQ/n9A9jVj5svvDEsj1wePq/mCVmHQ=
X-Received: by 2002:a05:6214:164:: with SMTP id
 y4mr13248992qvs.148.1574699710045; 
 Mon, 25 Nov 2019 08:35:10 -0800 (PST)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Nov 2019 11:34:49 -0500
Message-ID: <CAMdYzYpi-wAsUu92gJUF3CMm7dDd8yFCAV-yDpuy=d7ZBGoZnA@mail.gmail.com>
Subject: [BUG] rk3399 rockpro64 fails to power off
To: heiko.stuebner@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_083511_496282_EFACEF6B 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Morning,

Another issue I've come across with the rockpro64.
When issuing a shutdown command, the board will halt, but never powers off.

While the rk808 is assigned as the rockchip,system-power-controller in
the devicetree, it is not binding to the pm-poweroff command.
This is due to the psci driver already binding to the pm-poweroff command.

I have only managed to test this with the rockchip miniloader, both on
rockchip-u-boot and mainline-u-boot, the behavior is the same.
I'm not sure if this is a bootloader issue, atf issue, or psci driver
misbehavior.
As atf should be handling the psci command, it should be powering off
the board, but I am unsure if it has the capability of doing so.
If it does not, then the rk808 driver should be assigned to
pm-poweroff, but it does not because psci already claimed it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
