Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253921429F4
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 12:58:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ivdz51FaxkL3Tsahg94014MrPvjOTdMDIbOyo6Hl3Tw=; b=CO6wHSBVqKi+/n
	6dqTf/HlCpJmLOTbM2c4HB7oJ1NS4XNvgVbn357T5dePMgd4uJ+n/iEHpkct51SMWkrUxwhpuZE01
	c5ur+Jds5zj4rrYNX/expXoc5SVPI8ZxSOqAQtDE7yt7dEur2bI9yVa8qseG6rLXbby9m70ruSEov
	HjpJnJfCs7PknGB39u+zsw7BXqEoi6+CLIAEiM4VaUbcwyHvzJ8t1Gmc988e14lx+RMEx0vrZEtpn
	ZKfaMqS8JTlILlJTUT8nUPZyhUq/yAVLNZvbMQY3VCPNHWEB+RWQxChMibF1U48F7/JHF/mVx+A2h
	o873n+yXB6ALVnYMrEPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVhY-000888-AE; Mon, 20 Jan 2020 11:58:40 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVhR-00086r-6i
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 11:58:37 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 03:58:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; d="scan'208";a="275091434"
Received: from kuha.fi.intel.com ([10.237.72.53])
 by fmsmga001.fm.intel.com with SMTP; 20 Jan 2020 03:58:29 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Mon, 20 Jan 2020 13:58:28 +0200
Date: Mon, 20 Jan 2020 13:58:28 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Markus Reichl <m.reichl@fivetechno.de>, Guenter Roeck <linux@roeck-us.net>
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
Message-ID: <20200120115828.GC32175@kuha.fi.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_035833_258014_4F699D50 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus,

On Thu, Jan 09, 2020 at 05:29:07PM +0100, Markus Reichl wrote:
> Hi,
> =

> I'm working with a ROC-RK3399-PC arm64 board from firefly, circuit sheet =
[1].
> The board is powered from an USB-C type connector via an FUSB302 PD contr=
oller.
> With measured 15W+ power consumption it should use higher voltage PD mode=
s than
> the standard 5V USB-C mode.
> =

> When I add the related connector node in DTS [2] the FUSB302 initializes
> the right PD mode (e.g. 15V/3A).
> =

> But during initialisation the PD is switched off shortly and the board ha=
s a blackout.
> When I inject a backup supply voltage behind the FUSB302 (e.g. at SYS_12V=
 line) during boot
> I can remove the backup after succesfull setting up the PD and the board =
will run fine.
> =

> Is it possible to change the behaviour of the fusb302 driver to not power=
 down the PD supply
> during init?

I guess it's also possible that the problem is with tcpm.c instead of
fusb302.c. tcpm.c provides the USB PD state matchines. Guenter! Can
you take a look at this?

Both tcpm.c and fusb302.c create debugfs entries that have a more
detailed log about things that are happening. Can you check what you
have in those (when you boot with the mains cable plugged it)?

        % mount debugfs -t debugfs /sys/kernel/debug
        % cat /sys/kernel/debug/tcpm*
        % cat /sys/kernel/debug/fusb302/*

Which kernel are you running by the way?

> In vendor kernel (4.4) this is done somehow but the sources are too diffe=
rent for me to find
> out how.
> =

> Gru=DF,
> -- =

> Markus Reichl
> =

> [1]
> http://download.t-firefly.com/product/RK3399/Docs/Hardware/%E5%8E%9F%E7%9=
0%86%E5%9B%BE%E5%92%8C%E8%B4%B4%E7%89%87%E5%9B%BE/ROC-RK3399-PC/ROC-3399-PC=
-V10-A-20180804_%E5%8E%9F%E7%90%86%E5%9B%BE.pdf
> =

> [2]
> https://lkml.org/lkml/2019/12/10/517

-- =

heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
