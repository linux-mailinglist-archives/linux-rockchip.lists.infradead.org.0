Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A66162602
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Feb 2020 13:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QFnp942kSToiJVjnKk/ZuCiaENOr88dyFoEwk3rOOg=; b=b+jBiRoiISmaHo
	95ykAnVtj82jm8cuzr/VZKSOobDkaVXz2/wBbd1V6d5441dG4PaO5ofHP7ic/r6dXZyDiEZqYfr0a
	ML7JZ3XtvnaBU3hnSiAE9mlGcRIRIwav2VbuWQrCYJiYrGVcSlTfBJwD2KC66dBXLwXghatLfHhU5
	7fQfE2Iw7ZhgnhnJjWmdGbImtBPy8+59UVRUqEg6d+aOq/h346zmZm8sE049jmIk+InIcoMcCvEDF
	xT6XxqpdbSF6VLimjsfOfAb0mNrr1HztASManoVMjlia3bhmi5Ds+eTS8u0FGawuMwG7Ftkxevd3c
	bUXeMOEtyybRNrFEhEWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j41u0-0008I5-Pd; Tue, 18 Feb 2020 12:23:00 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j41tx-0008HR-U9
 for linux-rockchip@lists.infradead.org; Tue, 18 Feb 2020 12:22:59 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 04:22:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="229458741"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 04:22:51 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id DA69A20E95; Tue, 18 Feb 2020 14:22:49 +0200 (EET)
Date: Tue, 18 Feb 2020 14:22:49 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: remove serialization item in the
 TODO file
Message-ID: <20200218122249.GB5379@paasikivi.fi.intel.com>
References: <20200217175209.8279-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217175209.8279-1-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_042257_982361_8B71DBB5 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 06:52:09PM +0100, Dafna Hirschfeld wrote:
> The item 'Fix serialization on subdev ops.' was solved,
> so remove it from the TODO file.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
