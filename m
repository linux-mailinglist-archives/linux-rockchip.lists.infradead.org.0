Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE001116DEF
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 14:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+F3xrCBRlcen0ECvMWgseT82KS4EOk3XFkk76TPZOWk=; b=Qno+LFSPg/Y50p
	7JQ3JIRUDTNJMadp/nt16QOva/drSl0OZNuxL3hs3zKhI2JDhwSJFn2PUSJjbKbzqHaAahUaX2QdH
	6OaFX08UxwtS3c2L88LdAgSuoUkwkyFQuYjhvbXG/BXHRzSqk1WvSVOgUfskzKOAVQx2TOVEMpzhb
	M/wcRRUNAtxVFbxY9CX0Sdig31293oeZxFpGUUTgSTMecRtKV06OSlt+EBLZedxsltPWgnZgGVHRG
	R5J8c/NlJZjllPPHCrn914k/9D5XAf7ZQDHcPrJ2gTJBZg79IFvf76eKbq5hwMHQP+eLnp1SwzPvY
	AC0CpwOrAdjN4M8TT4ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJ5z-0005hh-0p; Mon, 09 Dec 2019 13:29:03 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJ5w-0005h7-1l
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 13:29:01 +0000
Received: by mail-qk1-x734.google.com with SMTP id w127so1174361qkb.11
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2019 05:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=AgznpJEZii1uXl48aeyj5GcVq44ls9B/7hXfmXRmw0k=;
 b=u2dmZF3Iyv+uVclwNEr1zsgYnyNCRNU1xxIiWaEzj+8zpAmPu6cDu5JkIctm4NHDtG
 lBVfcohVyisdNbesT9nL9EMjnRJRLl5inphqLd08UTL+l3CC3b0cJWcvSFtItspRXlns
 uUQ7+azOLxHZSSOeTHFmBRxzSLyEFQIVZU7O0YaCnJ1KFrwMuCS8a9WieCWW7VHeQito
 rcSTdw4ZeJ6etSvir3g7tuqxlZEPnNOwX9ECRmmEEyG3r2ThDI3kwrcQD7BIaVTppmJu
 tv+7hPikjY/CrUwp9Q+KalcsXtaYV05rELcZmEP8wOVqIYpsg7sziGstg5znYHwIWVIM
 KzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=AgznpJEZii1uXl48aeyj5GcVq44ls9B/7hXfmXRmw0k=;
 b=cbiMlyMo/zyRiGqWcQmUt7wOCBz/iwLAMhOczr9HZps3PgfKkLRe1vuBrEP2rYBPsb
 x1UeA8wkaaK/nU+rTpr0+b6aUc6ozssBkvhFv4V1/BXEB2e6KURA1R+0nXrpRXfynlad
 9xUj3Jju6s7FDIOIdUYh+3z5gVnA/KRGqs7MCJ54SD5QVpClVKHAn/xYDsyY4NVIy3Ep
 zEGH1NQ5z3p5489ALWjvvo3+h2JjXyUmINpJ0lD+Me5gocYQpGTW1ZadvTuzuHo0S62F
 esC4Wb7DdFk6OEQEISUS+EB1gCFNUiBHSlv+TOWR9oaTYshVesc0tCBeKCETbj4AmJBl
 ye7g==
X-Gm-Message-State: APjAAAWxcVABehIU38kqb1ZktRbqlUklTq6SHOyCJdfqAXPJCGrd2+cx
 SDC50j08lxNyoQuarm+Fel53yeLHNxR36LCa+k8=
X-Google-Smtp-Source: APXvYqyRSD9LPYpc9tChgo6bbl0SC7yFXlKlhlffzXu3ftiVRF3Jyg0IqI+K5OqVXBGEX7XCA1PzcZhxHEaMglT4LJ0=
X-Received: by 2002:a05:620a:143b:: with SMTP id
 k27mr26196001qkj.262.1575898138300; 
 Mon, 09 Dec 2019 05:28:58 -0800 (PST)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 9 Dec 2019 08:28:43 -0500
Message-ID: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
Subject: [Question] rk3399 vfio-pci/sr-iov support
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_052900_114429_AD1CAC9A 
X-CRM114-Status: UNSURE (   3.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Morning,

I'm back with more pcie fun on the rk3399.
I'm trying to get pcie passthrough working for a vm on the rk3399, and
have encountered some roadblocks.

First, vfio-pci doesn't work on the rk3399, as the pcie controller
doesn't bind explicitly to a iommu.
[37528.138212] vfio-pci 0000:01:00.0: assign IRQ: got 226
[37528.138254] vfio-pci: probe of 0000:01:00.0 failed with error -22

# find /sys/kernel/iommu_groups/ -type l
/sys/kernel/iommu_groups/1/devices/ff8f0000.vop
/sys/kernel/iommu_groups/2/devices/ff900000.vop

# virsh start openwrt
error: Failed to start domain openwrt
error: internal error: Process exited prior to exec: libvirt:  error :
internal error: Invalid device 0000:01:00.0 iommu_group file
/sys/bus/pci/devices/0000:01:00.0/iommu_group is not a symlink

Second, sr-iov support is broken.
root@rockpro64:/sys/bus/pci/devices/0000:01:00.0# echo 1 > sriov_numvfs
bash: echo: write error: Input/output error
[37352.907558] pci 0000:01:10.0: [8086:1520] type 7f class 0xffffff
[37352.907578] pci 0000:01:10.0: unknown header type 7f, ignoring device

Do any of y'all have some insight into these issues?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
